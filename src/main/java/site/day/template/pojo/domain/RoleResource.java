package site.day.template.pojo.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author 23DAY
 * @since 2022-10-12
 */
@Getter
@Setter
@Accessors(chain = true)
@TableName("day_role_resource")
@ApiModel(value = "RoleResource对象", description = "")
public class RoleResource {

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("角色id")
    @TableField("role_id")
    private Integer roleId;

    @ApiModelProperty("权限id")
    @TableField("resource_id")
    private Integer resourceId;


}
