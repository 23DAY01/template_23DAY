package site.day.template.constant;

/**
 * @Description web 常量
 * @ClassName WebConst
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
public interface WebConst {


    /**
     * 请求头常量
     */
    interface HEADER {
        String USER_AGENT = "user-agent";
        String CONTENT_TYPE_JSON = "application/json";
        String CHARSET = "utf-8";

        String CONTENT_TYPE_IMAGE="image/jpeg";

    }

    /**
     * 验证常量
     */
    interface AUTHENTICATION {
        String ADMIN_SESSION = "admin_session";
        String ADMIN_COOKIE = "admin_cookie";
        String USER_SESSION = "user_session";
        String USER_COOKIE = "user_cookie";
    }

    /**
     * 安全常量
     */
    interface SECURITY {
        String IV_KEY = "0000000000000000";
        String ENCODE_KEY = "1234567812345678";
    }

}
