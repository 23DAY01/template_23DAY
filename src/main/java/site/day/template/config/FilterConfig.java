package site.day.template.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import site.day.template.filter.RepeatableFilter;


/**
 * Filter配置
 *
 * @author ruoyi
 */
@Configuration
public class FilterConfig
{
    @Bean
    public FilterRegistrationBean repeatableFilterRegistration()
    {
        FilterRegistrationBean registration = new FilterRegistrationBean();
        registration.setFilter(new RepeatableFilter());
        registration.addUrlPatterns("/*");
        registration.setName("repeatableFilter");
        registration.setOrder(FilterRegistrationBean.LOWEST_PRECEDENCE);
        return registration;
    }
}
