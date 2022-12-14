package site.day.template.pojo.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author 23DAY
 * @since 2022-09-16
 */
@Data
@Builder
@Accessors(chain = true)
@ApiModel(value = "用户详细信息", description = "")
public class UserInfoDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 用户信息id
     */
    @ApiModelProperty("用户信息id")
    private Integer id;

    /**
     * 邮箱号
     */
    @ApiModelProperty("用户信息id")
    private String email;

    /**
     * 用户昵称
     */
    @ApiModelProperty("用户昵称")
    private String nickname;

    /**
     * 用户头像
     */
    @ApiModelProperty("用户头像")
    private String avatar;

    /**
     * 用户简介
     */
    @ApiModelProperty("用户简介")
    private String intro;
}
