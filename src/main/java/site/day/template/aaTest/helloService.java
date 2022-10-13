package site.day.template.aaTest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import site.day.template.pojo.domain.UserInfo;
import site.day.template.service.UserInfoService;

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


    @Cacheable(value = "hello")
    public List<UserInfo> getUserInfo(){
        return userInfoService.list();
    }
}
