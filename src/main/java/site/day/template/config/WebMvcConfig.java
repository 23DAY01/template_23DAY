package site.day.template.config;



import site.day.template.interceptor.ApiAccessRestrictionInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import site.day.template.interceptor.RepeatSubmitInterceptor;

/**
 * @Description WebMvc配置
 * @ClassName WebMvcConfig
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Bean
    public ApiAccessRestrictionInterceptor ApiAccessRestrictionInterceptor() {
        return new ApiAccessRestrictionInterceptor();
    }

    @Bean
    public RepeatSubmitInterceptor RepeatSubmitInterceptor(){
        return new RepeatSubmitInterceptor();
    }

//    解决跨域问题  在添加了springSecurity就不生效了
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowCredentials(true)
                .allowedHeaders("*")
                .allowedOriginPatterns("*")
                .allowedMethods("*");
    }

//    注册关于api访问限制的拦截器
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(RepeatSubmitInterceptor());
        registry.addInterceptor(ApiAccessRestrictionInterceptor());
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        knife4j
        registry.addResourceHandler("doc.html").addResourceLocations("classpath:/META-INF/resources/");
        registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
    }

}
