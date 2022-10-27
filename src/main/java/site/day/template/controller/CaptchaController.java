package site.day.template.controller;

import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import site.day.template.constant.AuthConst;
import site.day.template.constant.WebConst;
import site.day.template.utils.RedisUtil;
import site.day.template.utils.ResponseAPI;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/**
 * @Description 图片验证码
 * @ClassName CaptchaController
 * @Author 23DAY
 * @Date 2022/9/18 14:47
 * @Version 1.0
 */
@RestController
public class CaptchaController {

    @Autowired
    private Producer captchaProducer;


    /**
     * @Description 返回图片验证码
     * @Author 23DAY
     * @Date 2022/9/21 20:31
     * @Param [javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse]
     **/
    @GetMapping("/captcha")
    public void getCaptcha(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 设置内容类型
        response.setContentType(WebConst.HEADER.CONTENT_TYPE_IMAGE);
        // 创建验证码文本
        String capText = captchaProducer.createText();

        // 将验证码文本设置到session
        request.getSession().setAttribute(AuthConst.CAPTCHA, capText);

        // 创建验证码图片
        BufferedImage bi = captchaProducer.createImage(capText);
        // 获取响应输出流
        ServletOutputStream out = response.getOutputStream();
        // 将图片验证码数据写到响应输出流
        ImageIO.write(bi, "jpg", out);

        // 推送并关闭响应输出流
        try {
            out.flush();
        } finally {
            out.close();
        }
    }
}