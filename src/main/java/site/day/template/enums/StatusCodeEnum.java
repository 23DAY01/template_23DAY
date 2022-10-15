package site.day.template.enums;


import lombok.AllArgsConstructor;
import lombok.Getter;
import site.day.template.constant.AuthConst;

import static site.day.template.constant.AuthConst.StatusMessage;


/**
 * @Description 业务状态码
 * regex：([A-Z\w]+)\(([0-9]+),\s".+"\),
 * @ClassName StatusCode
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Getter
@AllArgsConstructor
public enum StatusCodeEnum {


    SUCCESS(2000101, StatusMessage.SUCCESS),
    UNKNOWN_ERROR(2009901, StatusMessage.UNKNOWN_ERROR),

    /**
     * Client
     **/
    //        参数错误
    PARAM_MISSING(4000101, StatusMessage.PARAM_MISSING),
    PARAM_TYPE_ERROR(4000102, StatusMessage.PARAM_TYPE_ERROR),
    PARAM_NOT_VALID(4000103, StatusMessage.PARAM_NOT_VALID),


    //        文件错误
    FILE_EMPTY(4000201, StatusMessage.FILE_EMPTY),
    FILE_TYPE_ERROR(4000202, StatusMessage.FILE_TYPE_ERROR),


    //        权限认证错误
    AUTH_NO_LOGIN(4000301, StatusMessage.AUTH_NO_LOGIN),
    AUTH_PERMISSION_DENIED(4000302, StatusMessage.AUTH_PERMISSION_DENIED),
    AUTH_UorP_ERROR(4000303, StatusMessage.AUTH_UorP_ERROR),
    AUTH_USERNAME_EMPTY(4000304, StatusMessage.AUTH_USERNAME_EMPTY),
    AUTH_USERNAME_MISSING(4000305, StatusMessage.AUTH_USERNAME_MISSING),
    AUTH_FAIL(4000306, StatusMessage.AUTH_FAIL),
    AUTH_CODE_ERROR(4000307, StatusMessage.AUTH_CODE_ERROR),
    AUTH_CODE_MISSING(4000308, StatusMessage.AUTH_CODE_MISSING),
    AUTH_SESSION_TIMEOUT(4000309, StatusMessage.AUTH_SESSION_TIMEOUT),
    AUTH_ACCOUNT_LOCKED(4000310, StatusMessage.AUTH_ACCOUNT_LOCKED),
    AUTH_METHOD_NOT_AVAILABLE(4000311, StatusMessage.AUTH_METHOD_NOT_AVAILABLE),
    AUTH_SESSION_CONCURRENCE_MAX(4000312,StatusMessage.AUTH_SESSION_CONCURRENCE_MAX),

    //        api错误
    API_ACCESS_FREQUENT(4000401, StatusMessage.API_ACCESS_FREQUENT),
    API_REPEAT_SUBMIT(4000402, StatusMessage.API_REPEAT_SUBMIT),

    //        未知错误
    UNKNOWN_CLIENT_ERROR(4009901, StatusMessage.UNKNOWN_CLIENT_ERROR),


    /**
     * Server
     **/
    //        参数错误
    PARAM_OPERATION_ERROR(5000101, StatusMessage.PARAM_OPERATION_ERROR),

    //        文件错误
    FILE_UPLOAD_ERROR(5000201, StatusMessage.FILE_UPLOAD_ERROR),
    FILE_DOWNLOAD_ERROR(5000202, StatusMessage.FILE_DOWNLOAD_ERROR),

    //      数据库错误
    SQL_ERROR(5000401, StatusMessage.SQL_ERROR),

    //        redis错误
    REDIS_CONNECTION_ERROR(5000501, StatusMessage.REDIS_CONNECTION_ERROR),

    //        未知错误
    UNKNOWN_SERVER_ERROR(5009901, StatusMessage.UNKNOWN_SERVER_ERROR);


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
