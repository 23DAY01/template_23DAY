package site.day.template.aaTest;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.util.PatternMatchUtils;
import site.day.template.mapper.UserInfoMapper;
import site.day.template.pojo.domain.UserInfo;
import site.day.template.service.UserInfoService;
import site.day.template.utils.PageUtil;

import java.util.List;

/**
 * @Description
 * @ClassName helloService
 * @Author 23DAY
 * @Date 2022/10/13 14:20
 * @Version 1.0
 */
@Service
public class helloService {

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private UserInfoMapper userInfoMapper;


    @Cacheable(value = "hello")
    public List<UserInfo> getUserInfo(){
        return userInfoService.list();
    }

    public List<UserInfo> getUserInfoPage(){
        Page<UserInfo> userInfoPage = new Page<>(1,2);
        userInfoMapper.selectPage(userInfoPage,new LambdaQueryWrapper<>());
        PageUtil.setTotal(userInfoPage.getTotal());
        return userInfoPage.getRecords();
    }
}
