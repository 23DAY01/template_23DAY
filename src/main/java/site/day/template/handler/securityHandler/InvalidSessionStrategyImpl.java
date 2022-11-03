package site.day.template.handler.securityHandler;

import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.stereotype.Component;
import site.day.template.enums.StatusCodeEnum;
import site.day.template.utils.JsonUtil;
import site.day.template.utils.ResponseAPI;
import site.day.template.utils.WebUtil;
import org.springframework.security.web.session.InvalidSessionStrategy;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * @Description session非法策略
 * @ClassName InvalidSessionStrategyImpl
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Component
public class InvalidSessionStrategyImpl implements InvalidSessionStrategy {
 
    @Override
    public void onInvalidSessionDetected(HttpServletRequest request, HttpServletResponse response) throws IOException {
        WebUtil.render(response,JsonUtil.Object2String(ResponseAPI.fail(StatusCodeEnum.AUTH_SESSION_TIMEOUT)));
    }
 
}