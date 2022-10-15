package site.day.template.pojo.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @Description
 * @ClassName UserAuthDto
 * @Author 23DAY
 * @Date 2022/10/12 15:30
 * @Version 1.0
 */
@Data
@Accessors(chain = true)
@ApiModel(value = "UserAuthDto对象", description = "")
@ToString
public class UserAuthDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    @ApiModelProperty("用户信息id")
    private Integer userInfoId;

    @ApiModelProperty("用户名")
    private String username;

    @ApiModelProperty("密码")
    private String password;

    @ApiModelProperty("登录类型")
    private Integer loginType;

    @ApiModelProperty("用户登录ip")
    private String ipAddress;

    @ApiModelProperty("ip来源")
    private String ipSource;

    @ApiModelProperty("上次登录时间")
    private LocalDateTime lastLoginTime;

    @ApiModelProperty("是否被禁用")
    private Boolean isDisabled;

    @ApiModelProperty("用户操作系统")
    private String os;

    @ApiModelProperty("用户浏览器")
    private String browser;

}