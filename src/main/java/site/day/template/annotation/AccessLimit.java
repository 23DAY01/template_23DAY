package site.day.template.annotation;

import java.lang.annotation.*;

/**
 * @Description api限流
 * @ClassName AccessLimit
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface AccessLimit {

    /**
     * 单位时间（秒）
     *
     * @return int
     */
    int seconds();

    /**
     * 单位时间最大请求次数
     *
     * @return int
     */
    int maxCount();
}
