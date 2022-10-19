package site.day.template.handler;

import org.springframework.web.HttpRequestMethodNotSupportedException;
import site.day.template.enums.StatusCodeEnum;
import site.day.template.exception.BusinessException;
import site.day.template.utils.ResponseAPI;
import io.lettuce.core.RedisConnectionException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;

import java.sql.SQLException;
import java.util.Arrays;

/**
 * @Description 全局异常处理
 * @ClassName GlobalExceptionHandler
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    /**
     * @return site.day.template.utils.ResponseAPI<?>
     * @Author 23DAY
     * @Description 业务异常
     * @Date 2022/9/15 10:08
     * @Param [site.day.template.exception.BusinessException]
     **/
    @ExceptionHandler(value = BusinessException.class)
    public ResponseAPI<?> BusinessExceptionHandler(BusinessException e) {
        log.error("业务异常:{}" , e.getMessage());
        return ResponseAPI.fail(e.getCode(), e.getMessage());
    }


    /**
     * @return site.day.template.utils.ResponseAPI<?>
     * @Author 23DAY
     * @Description 数据库异常
     * @Date 2022/9/15 10:07
     * @Param [java.sql.SQLException]
     **/
    @ExceptionHandler(value = SQLException.class)
    public ResponseAPI<?> sqlException(SQLException sqlException) {
        log.error("数据库异常:{}" , sqlException.getMessage());
        return ResponseAPI.fail(StatusCodeEnum.SQL_ERROR);
    }

    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    public ResponseAPI<?> httpRequestMethodNotSupportedException(HttpRequestMethodNotSupportedException e)
    {
        log.error("请求方法异常:" + e.getMessage());
        return ResponseAPI.fail(StatusCodeEnum.API_ACCESS_METHOD_ERROR);
    }


    /**
     * @return site.day.template.utils.ResponseAPI<?>
     * @Author 23DAY
     * @Description 参数缺失异常
     * @Date 2022/9/15 10:07
     * @Param [org.springframework.web.bind.MissingServletRequestParameterException]
     **/
    @ExceptionHandler(value = MissingServletRequestParameterException.class)
    public ResponseAPI<?> missingServletRequestParameterException(MissingServletRequestParameterException missingServletRequestParameterException) {
        log.error("参数缺失:{}" , missingServletRequestParameterException.getMessage());
        return ResponseAPI.fail(StatusCodeEnum.ACCESS_PARAM_MISSING);
    }


    /**
     * @return site.day.template.utils.ResponseAPI<?>
     * @Author 23DAY
     * @Description 参数非法异常
     * @Date 2022/9/15 10:08
     * @Param [org.springframework.web.bind.MethodArgumentNotValidException]
     **/
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseAPI<?> methodArgumentNotValidException(MethodArgumentNotValidException methodArgumentNotValidException) {
        log.error("参数校验失败:{}" , methodArgumentNotValidException.getMessage());
        return ResponseAPI.fail(StatusCodeEnum.ACCESS_PARAM_NOT_VALID);
    }

    /**
     * @return site.day.template.utils.ResponseAPI<?>
     * @Author 23DAY
     * @Description 参数类型不匹配异常
     * @Date 2022/9/15 10:08
     * @Param [org.springframework.web.method.annotation.MethodArgumentTypeMismatchException]
     **/
    @ExceptionHandler(MethodArgumentTypeMismatchException.class)
    public ResponseAPI<?> methodArgumentTypeMismatchException(MethodArgumentTypeMismatchException methodArgumentTypeMismatchException) {
        log.error("参数类型不匹配:{}" , methodArgumentTypeMismatchException.getMessage());
        return ResponseAPI.fail(StatusCodeEnum.ACCESS_PARAM_TYPE_ERROR);
    }


    @ExceptionHandler(RedisConnectionException.class)
    public ResponseAPI<?> redisConnectionException(RedisConnectionException redisConnectionException) {
        log.error("redis连接异常:{}" , redisConnectionException.getMessage());
        return ResponseAPI.fail(StatusCodeEnum.REDIS_CONNECTION_ERROR);
    }

    @ExceptionHandler(RuntimeException.class)
    public ResponseAPI<?> runTimeException(Exception runtimeException) {
        log.error("运行时未知异常:" + runtimeException.getMessage());
        log.error("运行时未知异常:" + Arrays.toString(runtimeException.getStackTrace()));
        return ResponseAPI.fail(StatusCodeEnum.UNKNOWN_RUNTIME_ERROR);
    }

    @ExceptionHandler(Exception.class)
    public ResponseAPI<?> exception(Exception exception) {
        log.error("系统未知异常:" + exception.getMessage());
        log.error("系统未知异常:" + Arrays.toString(exception.getStackTrace()));
        return ResponseAPI.fail(StatusCodeEnum.UNKNOWN_SYSTEM_ERROR);
    }


}

