package site.day.template.exception;

import org.springframework.security.core.AuthenticationException;

/**
 * @Description
 * @ClassName VerificationCodeException
 * @Author 23DAY
 * @Date 2022/9/18 14:51
 * @Version 1.0
 */
public class VerificationCodeException extends AuthenticationException {


    public VerificationCodeException(String msg, Throwable cause) {
        super(msg, cause);
    }

    public VerificationCodeException(String msg) {
        super(msg);
    }
}