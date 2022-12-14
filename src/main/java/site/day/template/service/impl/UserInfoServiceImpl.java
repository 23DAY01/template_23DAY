package site.day.template.service.impl;

import site.day.template.mapper.UserInfoMapper;
import site.day.template.pojo.domain.UserInfo;
import site.day.template.service.UserInfoService;
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
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo> implements UserInfoService {

}
