package site.day.template.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import site.day.template.mapper.RoleResourceMapper;
import site.day.template.pojo.domain.Resource;
import site.day.template.pojo.domain.Role;
import site.day.template.pojo.domain.RoleResource;
import site.day.template.pojo.dto.RoleDTO;
import site.day.template.pojo.dto.RoleResourceDTO;
import site.day.template.service.ResourceService;
import site.day.template.service.RoleResourceService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import site.day.template.service.RoleService;
import site.day.template.utils.BeanCopyUtil;
import site.day.template.utils.MapStruct;
import org.apache.commons.collections4.ListUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import site.day.template.mapper.RoleResourceMapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import static org.apache.commons.collections4.ListUtils.emptyIfNull;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 23DAY
 * @since 2022-10-12
 */
@Service
public class RoleResourceServiceImpl extends ServiceImpl<RoleResourceMapper, RoleResource> implements RoleResourceService {


    @Autowired
    private RoleService roleService;

    @Autowired
    private ResourceService resourceService;

    @Autowired
    private MapStruct mapStruct;


    /**
     * @Description 获取RoleResourceDTOs
     * @Author 23DAY
     * @Date 2022/9/17 17:51
     * @Param []
     * @return java.util.List<site.day.template.pojo.dto.RoleResourceDTO>
     **/
    @Override
    public List<RoleResourceDTO> listRoleResourceDTOs() {
//        获取符合条件的resource
        List<Resource> resourceList = resourceService.listResourceNotAnonymous();
//        转换
        List<RoleResourceDTO> roleResourceDTOList = mapStruct.resources2roleResources(resourceList);
//        获取资源id
        Set<Integer> resourceIds = resourceList.stream().map(Resource::getId).collect(Collectors.toSet());
//        查找资源角色关系
        LambdaQueryWrapper<RoleResource> roleResourceLambdaQueryWrapper = new LambdaQueryWrapper<>();
        roleResourceLambdaQueryWrapper.in(RoleResource::getResourceId, resourceIds);
        List<RoleResource> roleResourceList = list(roleResourceLambdaQueryWrapper);
//        获取角色id
        Set<Integer> roleIds = roleResourceList.stream().map(RoleResource::getRoleId).collect(Collectors.toSet());
//        获取角色
        LambdaQueryWrapper<Role> roleLambdaQueryWrapper = new LambdaQueryWrapper<>();
        roleLambdaQueryWrapper.in(Role::getId,roleIds);
        List<Role> roleList = roleService.list(roleLambdaQueryWrapper);
//        转换

//        以资源id：角色id做一个map
        Map<Integer, List<Integer>> resourceId2roleIdMap = roleResourceList.stream().collect(Collectors.groupingBy(RoleResource::getResourceId, Collectors.mapping(RoleResource::getRoleId, Collectors.toList())));

        for (RoleResourceDTO roleResourceDTO : roleResourceDTOList) {
//            获取当前资源的所有角色
            List<Role> roles = ListUtils.select(roleList, role -> emptyIfNull(resourceId2roleIdMap.get(roleResourceDTO.getResourceId())).contains(role.getId()));
//            填充
            roleResourceDTO.setRoleList(roles.stream().map(Role::getLabel).collect(Collectors.toList()));
        }

        return roleResourceDTOList;
    }
}
