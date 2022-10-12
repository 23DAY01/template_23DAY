package site.day.template.exception;

import lombok.Setter;

/**
 * @Description
 * @ClassName MyException
 * @Author 23DAY
 * @Date 2022/9/18 16:04
 * @Version 1.0
 */
@Setter
public abstract class BaseException extends RuntimeException{

    public Integer code = null;

    public String message = null;

}
