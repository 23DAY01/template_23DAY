package site.day.template.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @Description 文件路径枚举
 * @ClassName FilePathEnum
 * @Author 23DAY
 * @Date 2022/9/15 20:34
 * @Version 1.0
 */
@Getter
@AllArgsConstructor
public enum FilePathEnum {
    /**
     * 用户头像路径
     */
    AVATAR("avatar/", "头像路径");


    /**
     * 路径
     */
    private final String path;

    /**
     * 描述
     */
    private final String desc;

}
