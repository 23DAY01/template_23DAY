package site.day.template.handler.securityHandler;


import site.day.template.enums.StatusCodeEnum;
import site.day.template.utils.JsonUtil;
import site.day.template.utils.ResponseAPI;
import site.day.template.utils.WebUtil;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * @Description 认证失败处理器
 * @ClassName AuthenticationFailHandlerImpl
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Component
public class AuthenticationFailHandlerImpl implements AuthenticationFailureHandler {
    @Override
    public void onAuthenticationFailure(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException {
//        WebUtil.render(httpServletResponse, JsonUtil.Object2String(ResponseAPI.fail(StatusCode.CLIENT.AUTH_UorP_ERROR.getCode())));
        WebUtil.render(httpServletResponse, JsonUtil.Object2String(ResponseAPI.fail(StatusCodeEnum.getStatusCodeEnum(e.getMessage()))));
    }
}
