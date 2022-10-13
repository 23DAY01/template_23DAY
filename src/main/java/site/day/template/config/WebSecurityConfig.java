package site.day.template.config;

import site.day.template.constant.AuthConst;
import site.day.template.handler.securityHandler.*;
import site.day.template.handler.securityHandler.InvalidSessionStrategyImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.config.annotation.ObjectPostProcessor;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.session.HttpSessionEventPublisher;
import org.springframework.security.web.session.InvalidSessionStrategy;
import org.springframework.session.security.SpringSessionBackedSessionRegistry;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import javax.annotation.Resource;
import java.time.Duration;
import java.util.Collections;


/**
 * @Description springSecurity缓存配置
 * @ClassName WebSecurityConfig
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    //    未登录处理器
    @Autowired
    private AuthenticationEntryPointImpl authenticationEntryPoint;

    //    权限不足
    @Autowired
    private AccessDeniedHandlerImpl accessDeniedHandler;

    //    认证成功
    @Autowired
    @Lazy
    private AuthenticationSuccessHandlerImpl authenticationSuccessHandler;

    //    认证失败
    @Autowired
    private AuthenticationFailHandlerImpl authenticationFailHandler;

    //    登出成功
    @Autowired
    private LogoutSuccessHandlerImpl logoutSuccessHandler;

    //    自定义的权限管理
    @Bean
    public FilterInvocationSecurityMetadataSource securityMetadataSource() {
        return new FilterInvocationSecurityMetadataSourceImpl();
    }

    //    判断用户的权限
    @Bean
    public AccessDecisionManager accessDecisionManager() {
        return new AccessDecisionManagerImpl();
    }

//    @Bean
//    public SessionRegistry sessionRegistry() {
//        return new SessionRegistryImpl();
//    }

    @Resource
    @Lazy
    private SpringSessionBackedSessionRegistry<?> redisSessionRegistry;

    //    可以通过监听session的创建及销毁事件，来及时的清理session记录
    @Bean
    public HttpSessionEventPublisher httpSessionEventPublisher() {
        return new HttpSessionEventPublisher();
    }

    /**
     * 密码加密
     *
     * @return {@link PasswordEncoder} 加密方式
     */
    @Bean
    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
        return NoOpPasswordEncoder.getInstance();
    }

    @Bean
    public InvalidSessionStrategy InvalidSessionStrategyImpl() {
        return new InvalidSessionStrategyImpl();
    }


    //    跨域访问
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


//    @Bean
//    @Override
//    public AuthenticationManager authenticationManagerBean() throws Exception {
//        return super.authenticationManagerBean();
//    }

    /**
     * 配置权限
     *
     * @param http http
     * @throws Exception 异常
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // 配置登录注销路径与处理器
        http
//                配置表单登录
                .formLogin()
                //登录url
                .loginProcessingUrl("/login")
                //验证成功与失败处理器
                .successHandler(authenticationSuccessHandler)
                .failureHandler(authenticationFailHandler)
                .and()


//                登出
                .logout()
                //登出url
                .logoutUrl("/logout")
                //登出成功处理器
                .logoutSuccessHandler(logoutSuccessHandler)
                //session失效
                .invalidateHttpSession(true)
                //清除认证信息
                .clearAuthentication(true);


        // 配置路由权限信息
        http
//                自配置认证规则
                .authorizeRequests()
                .withObjectPostProcessor(
                        new ObjectPostProcessor<FilterSecurityInterceptor>() {
                            @Override
                            public <O extends FilterSecurityInterceptor> O postProcess(O fsi) {
                                fsi.setSecurityMetadataSource(securityMetadataSource());
                                fsi.setAccessDecisionManager(accessDecisionManager());
                                return fsi;
                            }
                        })
                //对于所有url都放行，在accessDecisionManager中进行认证
                .anyRequest().permitAll()
                .and()


//                记住我功能
                .rememberMe()
                .key(AuthConst.REMEMBER_ME_KEY)
                .tokenValiditySeconds(AuthConst.TOKEN_VALIDITY_SECONDS)
                .and()

//                springSecurity的跨域配置
                .cors()
                .configurationSource(corsConfigurationSource())
                .and()

//                关闭跨站请求防护
                .csrf().disable().exceptionHandling()

//                未登录处理
                .authenticationEntryPoint(authenticationEntryPoint)

//                权限不足处理
                .accessDeniedHandler(accessDeniedHandler)
                .and()


//                session配置
                .sessionManagement()
                //none: 该策略对会话不做任何变动，登录之后会沿用旧的session;
                //newSession: 用户登录后会创建一个新的session；
                //migrateSession: 默认策略，用户登录后创建一个新的session，并将旧session中的数据复制过来；
                //changeSessionId: 表示 session 不变，不会创建新的session，但是会修改 sessionId，内部使用由Servlet容器提供的会话固定保护。
                .sessionFixation()
                .migrateSession()
                //session过期策略
                .invalidSessionStrategy(InvalidSessionStrategyImpl())
                //
                .maximumSessions(5)
                //session集群会话处理
                .sessionRegistry(redisSessionRegistry);


//        添加过滤器
        //将过滤器添加在UsernamePasswordAuthenticationFilter之前
//        http
////                图形验证码
//                .addFilterBefore(new VerificationCodeFilter(), UsernamePasswordAuthenticationFilter.class);
    }

}
