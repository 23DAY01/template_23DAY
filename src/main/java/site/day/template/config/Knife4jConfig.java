package site.day.template.config;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import site.day.template.utils.StringUtil;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;

import javax.validation.constraints.Email;
import java.util.Collections;

/**
 * @Description Knife4j配置
 * Knife4j是一个集Swagger2 和 OpenAPI3为一体的增强解决方案
 * @ClassName Knife4jConfig
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Configuration
@EnableSwagger2WebMvc
public class Knife4jConfig {

    @Value("${server.port}")
    private String port;

    @Value("${23DAY.template.author}")
    private String author;

    @Value("${23DAY.template.github}")
    private String github;

    @Value("${23DAY.template.email}")
    private String email;

    @Value("${23DAY.template.version}")
    private String version;

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .protocols(Collections.singleton("http"))
                .host("http://localhost:" + port)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage(StringUtil.substringBeforeLast(this.getClass().getPackage().getName(), ".") + ".controller"))
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
//                文档标题
                .title("博客api文档")
//                文档描述
                .description("springboot+vue开发的博客项目")
//                联系人信息
                .contact(new Contact(author, github, email))
                .termsOfServiceUrl("http://localhost:" + port + "/doc.html")
//                版本
                .version(version)
                .build();
    }

}
