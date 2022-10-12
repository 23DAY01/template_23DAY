package site.day.template.utils;

import cn.hutool.core.util.StrUtil;

/**
 * @Description
 * @ClassName StringUtil
 * @Author 23DAY
 * @Date 2022/10/12 22:45
 * @Version 1.0
 */
public class StringUtil {

    /**
     * @return java.lang.Boolean
     * @Description 判断字符串是否为空或者未被定义
     * @Author 23DAY
     * @Date 2022/10/12 22:46
     * @Param [java.lang.String]
     **/
    public static Boolean isNullOrUndefined(String str) {
        return StrUtil.isNullOrUndefined(str);
    }

    /**
     * @return java.lang.Boolean
     * @Description 判断是否为空
     * @Author 23DAY
     * @Date 2022/10/12 23:05
     * @Param [java.lang.String]
     **/
    public static Boolean isEmpty(String str) {
        return StrUtil.isEmpty(str);
    }

    /**
     * @return java.lang.String
     * @Description 获取uuid
     * @Author 23DAY
     * @Date 2022/10/12 23:06
     * @Param []
     **/
    public static String uuid() {
        return StrUtil.uuid();
    }

    /**
     * @return java.lang.String
     * @Description 去除前缀
     * @Author 23DAY
     * @Date 2022/10/12 23:06
     * @Param []
     **/
    public static String removePrefix(String str, String prefix) {
        return StrUtil.removePrefix(str, prefix);
    }
}
