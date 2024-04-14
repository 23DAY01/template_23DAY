package site.day.template.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.commons.collections4.CollectionUtils;
import site.day.template.mapper.UserRoleMapper;
import site.day.template.mapper.RoleMapper;
import site.day.template.pojo.domain.Role;
import site.day.template.pojo.domain.UserRole;
import site.day.template.service.RoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 23DAY
 * @since 2022-10-12
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Override
    public List<String> listRolesByUserInfoId(Integer userInfoId) {

//        根据userInfoId查询userRole 提取roleId
        Set<Integer> roleIds = userRoleMapper.selectList(Wrappers.lambdaQuery(UserRole.class)
                        .eq(UserRole::getUserId, userInfoId))
                .stream().map(UserRole::getRoleId).collect(Collectors.toSet());

//        根据roleId查询role 提取roleLabel
        List<Role> roleList;
        if (CollectionUtils.isNotEmpty(roleIds)) {
            roleList = list(Wrappers.lambdaQuery(Role.class).in(Role::getId, roleIds));
        } else {
            roleList = Collections.emptyList();
        }
        return roleList.stream().map(Role::getLabel).collect(Collectors.toList());
    }
}
