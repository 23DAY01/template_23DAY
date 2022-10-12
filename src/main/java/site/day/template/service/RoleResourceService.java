package site.day.template.service;

import site.day.template.pojo.domain.RoleResource;
import com.baomidou.mybatisplus.extension.service.IService;
import site.day.template.pojo.dto.RoleResourceDTO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 23DAY
 * @since 2022-10-12
 */
public interface RoleResourceService extends IService<RoleResource> {

    List<RoleResourceDTO> listRoleResourceDTOs();
}
