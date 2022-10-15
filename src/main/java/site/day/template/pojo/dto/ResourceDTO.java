package site.day.template.pojo.dto;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;

/**
 * <p>
 * 
 * </p>
 *
 * @author 23DAY
 * @since 2022-09-16
 */
@Data
@Accessors(chain = true)
@TableName("day_resource")
@ApiModel(value = "ResourceDTO对象", description = "")
public class ResourceDTO {

    @ApiModelProperty("主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("资源名")
    private String name;

    @ApiModelProperty("权限路径")
    private String url;

    @ApiModelProperty("请求方式")
    private String requestMethod;

    @ApiModelProperty("是否匿名访问 0否 1是")
    private Boolean anonymous;

    @ApiModelProperty("创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty("修改时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;


}
