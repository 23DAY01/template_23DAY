package site.day.template.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.security.web.authentication.rememberme.TokenBasedRememberMeServices;
import org.springframework.security.web.authentication.session.*;
import org.springframework.security.web.session.HttpSessionEventPublisher;
import org.springframework.security.web.session.InvalidSessionStrategy;
import org.springframework.session.security.SpringSessionBackedSessionRegistry;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import site.day.template.constant.AuthConst;
import site.day.template.filter.LoginAuthenticationFilter;
import site.day.template.filter.RepeatableFilter;
import site.day.template.handler.securityHandler.*;
import site.day.template.service.impl.UserDetailsServiceImpl;

import javax.annotation.Resource;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @Description
 * @ClassName SecurityBeanCreateConfig
 * @Author 23DAY
 * @Date 2022/10/15 17:31
 * @Version 1.0
 */
@Configuration
public class SecurityBeanCreateConfig {

    /**
     * ------------------------------------------------------------------
     * formLogin配置
     * <p>
     * ------------------------------------------------------------------
     */


    // 自定义接口拦截规则
    @Bean
    public FilterInvocationSecurityMetadataSource filterInvocationSecurityMetadataSource() {
        return new FilterInvocationSecurityMetadataSourceImpl();
    }

    // 自定义权限提取
    @Bean
    public AccessDecisionManager accessDecisionManager() {
        return new AccessDecisionManagerImpl();
    }


    /**
     * ------------------------------------------------------------------
     * misc配置
     * <p>
     * ------------------------------------------------------------------
     */
    @Resource
    private UserDetailsServiceImpl userDetailsService;

    // 密码加密策略
    @Bean
    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
        return NoOpPasswordEncoder.getInstance();
    }

    // remember-me service
    @Bean
    public TokenBasedRememberMeServices tokenBasedRememberMeServices() {
        TokenBasedRememberMeServices tokenBasedRememberMeServices = new TokenBasedRememberMeServices(AuthConst.REMEMBER_ME_KEY, userDetailsService);
        tokenBasedRememberMeServices.setTokenValiditySeconds(AuthConst.TOKEN_VALIDITY_SECONDS);
        return tokenBasedRememberMeServices;
    }

    // 跨域访问
    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.setAllowCredentials(true);
        configuration.setAllowedOrigins(Collections.singletonList("*"));
        configuration.setAllowedMethods(Collections.singletonList("*"));
        configuration.setAllowedHeaders(Collections.singletonList("*"));
        configuration.setMaxAge(Duration.ofHours(1));
        source.registerCorsConfiguration("/**", configuration);
        return source;
    }

    /**
     * ------------------------------------------------------------------
     * diy配置
     * <p>
     * ------------------------------------------------------------------
     */

    // 重复使用InputStream
    @Bean
    public RepeatableFilter repeatableFilter() {
        return new RepeatableFilter();
    }



    // 自定义密码比对
    @Bean
    public DaoAuthenticationProviderImpl daoAuthenticationProvider() {
        DaoAuthenticationProviderImpl daoAuthenticationProviderImpl = new DaoAuthenticationProviderImpl();
        daoAuthenticationProviderImpl.setUserDetailsService(userDetailsService);
        return daoAuthenticationProviderImpl;
    }

    /**
     * ------------------------------------------------------------------
     * session配置
     * <p>
     * ------------------------------------------------------------------
     */

    // redis存储session 默认在jvm内存中存储
    @Resource
    @Lazy
    private SpringSessionBackedSessionRegistry<?> redisSessionRegistry;

    // 可以通过监听session的创建及销毁事件，来及时的清理session记录
    @Bean
    public HttpSessionEventPublisher httpSessionEventPublisher() {
        return new HttpSessionEventPublisher();
    }

    // session错误策略
    @Bean
    public InvalidSessionStrategy invalidSessionStrategy() {
        return new InvalidSessionStrategyImpl();
    }

    // session过期策略
    @Bean
    public SessionInformationExpiredStrategyImpl sessionInformationExpiredStrategy() {
        return new SessionInformationExpiredStrategyImpl();
    }
    // session并发策略：处理
    @Bean
    public SessionFixationProtectionStrategy sessionFixationProtectionStrategy() {
        return new SessionFixationProtectionStrategy();
    }

    // session并发策略：
    @Bean
    public ConcurrentSessionControlAuthenticationStrategy concurrentSessionControlAuthenticationStrategy() {
        ConcurrentSessionControlAuthenticationStrategy strategy = new ConcurrentSessionControlAuthenticationStrategy(redisSessionRegistry);
        strategy.setMaximumSessions(1);
        return strategy;
    }

    /*
        none: 该策略对会话不做任何变动，登录之后会沿用旧的session;
        newSession: 用户登录后会创建一个新的session；
        migrateSession: 默认策略，用户登录后创建一个新的session，并将旧session中的数据复制过来；
        changeSessionId: 表示 session 不变，不会创建新的session，但是会修改 sessionId，内部使用由Servlet容器提供的会话固定保护。
    */
    // session登录后只修改id策略
    @Bean
    public ChangeSessionIdAuthenticationStrategy changeSessionIdAuthenticationStrategy() {
        return new ChangeSessionIdAuthenticationStrategy();
    }

    // 整合session策略
    @Bean
    public CompositeSessionAuthenticationStrategy compositeSessionAuthenticationStrategy() {
        List<SessionAuthenticationStrategy> sessionAuthenticationStrategies = new ArrayList<>();
        sessionAuthenticationStrategies.add(concurrentSessionControlAuthenticationStrategy());
        sessionAuthenticationStrategies.add(changeSessionIdAuthenticationStrategy());
        return new CompositeSessionAuthenticationStrategy(sessionAuthenticationStrategies);
    }
}
