package site.day.template.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

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
    @GetMapping("/hello")
    @ApiOperation(value = "hello")
    public String hello(){
        return "hello";
    }

    @GetMapping("/hello2")
    @ApiOperation(value = "hello2")
    public String hello2(){
        return "hello2";
    }


}
