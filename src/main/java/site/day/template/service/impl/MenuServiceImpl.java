package site.day.template.service.impl;

import site.day.template.pojo.domain.Menu;
import site.day.template.mapper.MenuMapper;
import site.day.template.service.MenuService;
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
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements MenuService {

}
