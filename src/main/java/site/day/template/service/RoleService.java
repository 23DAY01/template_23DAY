package site.day.template.service;

import site.day.template.pojo.domain.Role;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 23DAY
 * @since 2022-10-12
 */
public interface RoleService extends IService<Role> {

    List<String> listRolesByUserInfoId(Integer id);
}
