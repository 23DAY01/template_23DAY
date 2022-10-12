package site.day.template.pojo.dto;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;
import java.util.List;

/**
 * <p>
 * 
 * </p>
 *
 * @author 23DAY
 * @since 2022-09-16
 */
@Getter
@Setter
@Accessors(chain = true)
@TableName("day_role")
@ApiModel(value = "RoleDTO对象", description = "")
public class RoleDTO {

    @ApiModelProperty("主键id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("角色名")
    private String name;

    @ApiModelProperty("角色描述")
    private String label;

    @ApiModelProperty("是否禁用  0否 1是")
    private Boolean disabled;

    @ApiModelProperty("创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty("更新时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

    /**
     * 资源id列表
     */
    @ApiModelProperty("资源id列表")
    private List<Integer> resourceIdList;

    /**
     * 菜单id列表
     */
    @ApiModelProperty("菜单id列表")
    private List<Integer> menuIdList;

}
