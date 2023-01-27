package site.day.template.aaTest;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import site.day.template.annotation.AccessLimit;
import site.day.template.annotation.OptLog;
import site.day.template.constant.OptTypeConst;
import site.day.template.enums.StatusCodeEnum;
import site.day.template.exception.BusinessException;
import site.day.template.pojo.domain.UserInfo;
import site.day.template.pojo.vo.PageResult;
import site.day.template.utils.MapStruct;
import site.day.template.utils.ResponseAPI;

import javax.servlet.http.HttpSession;
import java.util.List;

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

    @Autowired
    private MapStruct mapStruct;

    @Autowired
    private HttpSession session;

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
        throw BusinessException.withErrorCodeEnum(StatusCodeEnum.AUTH_FAILED);
//        return ResponseAPI.success("hello");
    }

    @GetMapping("/hello4")
    public ResponseAPI<?> hello4() {
        List<UserInfo> userInfoPage = helloService.getUserInfoPage();
        return ResponseAPI.success(PageResult.build(userInfoPage));
    }

    @GetMapping("/hello5")
    public ResponseAPI<?> hello5() {
        a a = new a();
        a.val = 1;
        a.c = new c("c");
        return ResponseAPI.success(mapStruct.a2b(a));
    }

    @GetMapping("/hello6")
    public ResponseAPI<?> hello6() {
        String a = "aaaa";
        session.removeAttribute("aaaa");
        session.setAttribute("aaaa", a);
        System.out.println(session.getId());
        return ResponseAPI.success(session.getAttribute("aaaa"));
    }
}
