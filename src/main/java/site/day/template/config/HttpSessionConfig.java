package site.day.template.config;

import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.session.FindByIndexNameSessionRepository;
import org.springframework.session.Session;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.session.security.SpringSessionBackedSessionRegistry;
import site.day.template.listener.RedisHttpSessionListener;

import javax.annotation.Resource;
import javax.servlet.http.HttpSessionListener;


/**
 * @Description session配置
 * @ClassName HttpSessionConfig
 * @Author 23DAY
 * @Date 2022/9/18 14:46
 * @Version 1.0
 */
@Configuration
@EnableRedisHttpSession
public class HttpSessionConfig {
 
    @Resource
    private FindByIndexNameSessionRepository<? extends Session> sessionRepository;
 
    /**
     * SpringSessionBackedSessionRegistry是Session为Spring Security提供的用于在集群环境中控制并发会话的注册表实现类
     */
    @Bean
    public SpringSessionBackedSessionRegistry<?> springSessionBackedSessionRegistry(){
        return new SpringSessionBackedSessionRegistry<>(sessionRepository);
    }

//    /**
//     * @Description 注册session监听器
//     * @Author 23DAY
//     * @Date 2023/1/27 19:00
//     * @Param []
//     * @return org.springframework.boot.web.servlet.ServletListenerRegistrationBean<site.day.template.listener.RedisHttpSessionListener>
//     **/
//    @Bean
//    public ServletListenerRegistrationBean<HttpSessionListener> servletListenerRegistrationBean() {
//        ServletListenerRegistrationBean<HttpSessionListener> listenerRegistrationBean = new ServletListenerRegistrationBean<>();
//        listenerRegistrationBean.setListener(new RedisHttpSessionListener());
//        return listenerRegistrationBean;
//    }
 
}