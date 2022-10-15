package site.day.template.pojo.domain;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 * <p>
 *
 * </p>
 *
 * @author 23DAY
 * @since 2022-10-13
 */
@Data
@Accessors(chain = true)
@TableName("day_resource")
@ApiModel(value = "Resource对象", description = "")
public class Resource implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("资源名")
    @TableField("name")
    private String name;

    @ApiModelProperty("权限路径")
    @TableField("url")
    private String url;

    @ApiModelProperty("请求方式")
    @TableField("request_method")
    private String requestMethod;

    @ApiModelProperty("父权限id")
    @TableField("parent_id")
    private Integer parentId;

    @ApiModelProperty("是否匿名访问 0否 1是")
    @TableField("is_anonymous")
    private Boolean isAnonymous;

    @ApiModelProperty("创建时间")
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty("修改时间")
    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;


}
