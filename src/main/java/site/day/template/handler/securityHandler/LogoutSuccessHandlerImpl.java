package site.day.template.handler.securityHandler;

import site.day.template.enums.StatusCodeEnum;
import site.day.template.pojo.dto.UserDetail;
import site.day.template.utils.JsonUtil;
import site.day.template.utils.ResponseAPI;
import site.day.template.utils.WebUtil;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Description 登出成功处理器
 * @ClassName LogoutSuccessHandlerImpl
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Component
public class LogoutSuccessHandlerImpl implements LogoutSuccessHandler {

    @Override
    public void onLogoutSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException {
        if (null == authentication) {
            WebUtil.render(httpServletResponse, JsonUtil.Object2String(ResponseAPI.fail(StatusCodeEnum.AUTH_NO_LOGIN)));
        } else {
            UserDetail userDetail = (UserDetail) authentication.getPrincipal();
            WebUtil.render(httpServletResponse, JsonUtil.Object2String(ResponseAPI.success(userDetail.getUserInfoDTO())));
        }
    }
}
