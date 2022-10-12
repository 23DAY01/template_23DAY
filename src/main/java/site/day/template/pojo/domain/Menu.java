package site.day.template.pojo.domain;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;
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
@TableName("day_menu")
@ApiModel(value = "Menu对象", description = "")
public class Menu {

    @ApiModelProperty("主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("菜单名")
    @TableField("name")
    private String name;

    @ApiModelProperty("菜单路径")
    @TableField("path")
    private String path;

    @ApiModelProperty("组件")
    @TableField("component")
    private String component;

    @ApiModelProperty("菜单icon")
    @TableField("icon")
    private String icon;

    @ApiModelProperty("创建时间")
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty("更新时间")
    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

    @ApiModelProperty("排序")
    @TableField("order_num")
    private Integer orderNum;

    @ApiModelProperty("父id")
    @TableField("parent_id")
    private Integer parentId;

    @ApiModelProperty("是否隐藏  0否1是")
    @TableField("is_hidden")
    private Integer isHidden;


}
