package site.day.template.service;

import com.baomidou.mybatisplus.extension.service.IService;
import site.day.template.pojo.domain.Resource;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 23DAY
 * @since 2022-10-12
 */
public interface ResourceService extends IService<Resource> {

    List<Resource> listResourceNotAnonymous();
}
