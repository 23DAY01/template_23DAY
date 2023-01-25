package site.day.template.pojo.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @Description 分页结果封装
 * @ClassName PageResult
 * @Author 23DAY
 * @Date 2023/1/25 23:42
 * @Version 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(value = "PageResult",description = "分页结果")
public class PageResult<T> {

    @ApiModelProperty(name = "record", value = "分页结果", dataType = "List<T>")
    private List<T> records;

    @ApiModelProperty(name = "total", value = "查询总数", dataType = "long")
    private long total;

    @ApiModelProperty(name = "size", value = "查询条数", dataType = "size")
    private long size;

    @ApiModelProperty(name = "current", value = "查询页码", dataType = "current")
    private long current;


}
