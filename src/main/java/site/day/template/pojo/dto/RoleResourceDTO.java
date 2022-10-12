package site.day.template.pojo.dto;

import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.Accessors;

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
@ToString
@Accessors(chain = true)
@TableName("day_role_resource")
@ApiModel(value = "RoleResourceDTO对象", description = "")
public class RoleResourceDTO {

    /**
     * 资源id
     */
    @ApiModelProperty("资源id")
    private Integer resourceId;

    /**
     * 路径
     */
    @ApiModelProperty("路径")
    private String url;

    /**
     * 请求方式
     */
    @ApiModelProperty("请求方式")
    private String requestMethod;



    /**
     * 角色名
     */
    @ApiModelProperty("角色名")
    private List<String> roleList;


}
