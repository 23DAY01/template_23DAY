package site.day.template.handler.securityHandler;

import com.fasterxml.jackson.core.JsonProcessingException;
import site.day.template.enums.StatusCodeEnum;
import site.day.template.utils.JsonUtil;
import site.day.template.utils.ResponseAPI;
import site.day.template.utils.WebUtil;
import org.springframework.security.web.session.InvalidSessionStrategy;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class InvalidSessionStrategyImpl implements InvalidSessionStrategy {
 
    @Override
    public void onInvalidSessionDetected(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        这里用户未登录也算做session过期  有点不合适
        WebUtil.render(response,JsonUtil.Object2String(ResponseAPI.fail(StatusCodeEnum.AUTH_NO_LOGIN)));
    }
 
}