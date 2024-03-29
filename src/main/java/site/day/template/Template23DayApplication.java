package site.day.template;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
@EnableCaching
public class  Template23DayApplication {

    public static void main(String[] args) {
        ConfigurableApplicationContext run = SpringApplication.run(Template23DayApplication.class, args);
        System.out.println();
    }

}
