package site.day.template.enums;


import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @Description 业务状态码
 * @ClassName StatusCode
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Getter
@AllArgsConstructor
public enum StatusCodeEnum {

    SUCCESS(2000101, "success"),
    UNKNOWN_ERROR(2009901, "unknown_error"),

    /**
     * Client
     **/
    //        参数错误
    PARAM_MISSING(4000101, "参数缺失"),
    PARAM_TYPE_ERROR(4000102, "参数类型错误"),
    PARAM_NOT_VALID(4000103, "参数校验失败"),


    //        文件错误
    FILE_EMPTY(4000201, "文件为空"),
    FILE_TYPE_ERROR(4000202, "文件类型错误"),


    //        权限认证错误
    AUTH_NO_LOGIN(4000301, "尚未登录"),
    AUTH_PERMISSION_DENIED(4000302, "缺少权限"),
    AUTH_UorP_ERROR(4000303, "认证失败"),
    AUTH_USERNAME_EMPTY(4000304, "用户名为空"),
    AUTH_USERNAME_MISSING(4000305, "账号不存在"),
    AUTH_FAIL(4000306, "认证失败"),
    AUTH_CODE_ERROR(4000307, "校验码错误"),
    AUTH_CODE_MISSING(4000308, "校验码为空"),
    AUTH_SESSION_TIMEOUT(4000309, "session过期"),
    AUTH_ACCOUNT_LOCKED(4000310,"用户帐号已被锁定"),

    //        api错误
    API_ACCESS_FREQUENT(4000401, "接口访问频繁"),
    API_REPEAT_SUBMIT(4000402,"重复提交"),

    //        未知错误
    UNKNOWN_CLIENT_ERROR(4009901, "客户端未知异常"),


    /**
     * Server
     **/
    //        参数错误
    PARAM_OPERATION_ERROR(5000101, "参数封装失败"),

    //        文件错误
    FILE_UPLOAD_ERROR(5000201, "文件上传失败"),
    FILE_DOWNLOAD_ERROR(5000202, "文件下载失败"),

    //      数据库错误
    SQL_ERROR(5000401, "数据库异常"),

    //        redis错误
    REDIS_CONNECTION_ERROR(5000501, "redis连接异常"),

    //        未知错误
    UNKNOWN_SERVER_ERROR(5009901, "服务器未知错误");


    private final Integer code;

    private final String message;


    /**
     * @return site.day.template.enums.StatusCodeEnum
     * @Description 通过code获取StatusCodeEnum
     * @Author 23DAY
     * @Date 2022/10/12 15:09
     * @Param [java.lang.Integer]
     **/
    public static StatusCodeEnum getStatusCodeEnum(Integer code) {
        for (StatusCodeEnum value : StatusCodeEnum.values()) {
            if (value.getCode().equals(code)) {
                return value;
            }
        }
        return UNKNOWN_ERROR;
    }

    /**
     * @return site.day.template.enums.StatusCodeEnum
     * @Description 通过message获取StatusCodeEnum
     * @Author 23DAY
     * @Date 2022/10/12 15:09
     * @Param [java.lang.Integer]
     **/
    public static StatusCodeEnum getStatusCodeEnum(String message) {
        for (StatusCodeEnum value : StatusCodeEnum.values()) {
            if (value.getMessage().equals(message)) {
                return value;
            }
        }
        return UNKNOWN_ERROR;
    }
}
