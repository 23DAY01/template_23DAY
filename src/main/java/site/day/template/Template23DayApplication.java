package site.day.template;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class Template23DayApplication {

    public static void main(String[] args) {
        SpringApplication.run(Template23DayApplication.class, args);
    }

}
