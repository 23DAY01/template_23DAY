package site.day.template.service.impl;

import site.day.template.pojo.domain.Role;
import site.day.template.mapper.RoleMapper;
import site.day.template.service.RoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

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

}
