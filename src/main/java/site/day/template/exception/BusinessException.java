package site.day.template.exception;


import site.day.template.enums.StatusCodeEnum;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.io.Serializable;

//TODO 代码耦合性太强 主要是为了配合在filter中抛出异常而设计的

/**
 * @Description 自定义业务异常
 * @ClassName BusinessException
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Getter
@AllArgsConstructor
public class BusinessException extends RuntimeException implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer code;
    private String message;

    private BusinessException() {
        super();
    }

    public static BusinessException withErrorMessage(String message) {
        BusinessException businessException = new BusinessException();
        businessException.message = message;
        businessException.code = StatusCodeEnum.getStatusCodeEnum(message).getCode();
        return businessException;
    }

    public static BusinessException withErrorCodeEnum(StatusCodeEnum errorEnum) {
        BusinessException businessException = new BusinessException();
        businessException.code = errorEnum.getCode();
        businessException.message = errorEnum.getMessage();
        return businessException;
    }


}
