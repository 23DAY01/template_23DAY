package site.day.template.aaTest;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import site.day.template.annotation.AccessLimit;
import site.day.template.annotation.OptLog;
import site.day.template.annotation.RepeatSubmit;
import site.day.template.constant.OptTypeConst;
import site.day.template.utils.ResponseAPI;

/**
 * @Description
 * @ClassName aHelloController
 * @Author 23DAY
 * @Date 2022/10/12 17:04
 * @Version 1.0
 */
@RestController
@Api("hello")
public class aHelloController {

    @Autowired
    private helloService helloService;

    @GetMapping("/hello")
    @ApiOperation(value = "hello")
    public String hello() {
        return "hello";
    }

    //    @RepeatSubmit
    @GetMapping("/hello2")
    @OptLog(optType = OptTypeConst.UPDATE)
    @AccessLimit(seconds = 10, maxCount = 2)
    @ApiOperation(value = "hello2")
    public ResponseAPI<?> hello2() {
        return ResponseAPI.success(helloService.getUserInfo());
    }


    @GetMapping("/hello3")
    public ResponseAPI<?> hello3() {
        return ResponseAPI.success("hello");
    }
}
