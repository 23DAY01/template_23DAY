package site.day.template.handler.securityHandler;

import org.springframework.security.web.session.SessionInformationExpiredEvent;
import org.springframework.security.web.session.SessionInformationExpiredStrategy;
import org.springframework.stereotype.Component;
import site.day.template.enums.StatusCodeEnum;
import site.day.template.utils.JsonUtil;
import site.day.template.utils.ResponseAPI;
import site.day.template.utils.WebUtil;

import javax.servlet.ServletException;
import java.io.IOException;

/**
 * @Description session并发控制
 * @ClassName SessionInformationExpiredStrategyImpl
 * @Author 23DAY
 * @Date 2022/10/14 22:34
 * @Version 1.0
 */
public class SessionInformationExpiredStrategyImpl implements SessionInformationExpiredStrategy {
    @Override
    public void onExpiredSessionDetected(SessionInformationExpiredEvent event) throws IOException, ServletException {
        WebUtil.render(event.getResponse(), JsonUtil.Object2String(ResponseAPI.fail(StatusCodeEnum.AUTH_SESSION_CONCURRENCE_MAX)));
    }
}
