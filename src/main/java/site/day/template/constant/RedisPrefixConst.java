package site.day.template.constant;

/**
 * @Description Redis 常量
 * @ClassName RedisPrefixConst
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
public class RedisPrefixConst {

    /**
     * 验证码过期时间
     */
    public static final long CODE_EXPIRE_TIME = 15 * 60;

    /**
     * 验证码
     */
    public static final String USER_CODE_KEY = "code:";

    /**
     * 用户地区
     */
    public static final String USER_AREA = "user_area";

    /**
     * 访客地区
     */
    public static final String VISITOR_AREA = "visitor_area";

    /**
     * 访客
     */
    public static final String UNIQUE_VISITOR = "unique_visitor";

    /**
     * 用户登录
     */
    public static final String USER_LOGIN = "login:";

    /**
     * 重复提交
     */
    public static final String REPEAT_SUBMIT_KEY="repeat_submit:";

    /**
     * 接口访问频繁
     */
    public static final String API_ACCESS_RESTRICTION="api_access_restriction:";


}
