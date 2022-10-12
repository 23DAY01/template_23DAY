package site.day.template.utils;

import com.fasterxml.jackson.databind.ObjectMapper;
import site.day.template.constant.WebConst;
import eu.bitwalker.useragentutils.UserAgent;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;


/**
 * @Description web工具
 * @ClassName WebUtil
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
public class WebUtil {

    /**
     * @Description 获取用户ip地址
     * @Author 23DAY
     * @Date 2022/9/15 10:27
     * @Param [javax.servlet.http.HttpServletRequest]
     * @return java.lang.String
     **/
    public static String getIpAddress(HttpServletRequest request) {
        String ipAddress = null;
        try {
            ipAddress = request.getHeader("x-forwarded-for");
            if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
                ipAddress = request.getHeader("Proxy-Client-IP");
            }
            if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
                ipAddress = request.getHeader("WL-Proxy-Client-IP");
            }
            if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
                ipAddress = request.getRemoteAddr();
                if ("127.0.0.1".equals(ipAddress)) {
                    // 根据网卡取本机配置的IP
                    InetAddress inet = null;
                    try {
                        inet = InetAddress.getLocalHost();
                    } catch (UnknownHostException e) {
                        e.printStackTrace();
                    }
                    assert inet != null;
                    ipAddress = inet.getHostAddress();
                }
            }
            // 对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割
            if (ipAddress != null && ipAddress.length() > 15) {
                // = 15
                if (ipAddress.indexOf(",") > 0) {
                    ipAddress = ipAddress.substring(0, ipAddress.indexOf(","));
                }
            }
        } catch (Exception e) {
            ipAddress = "";
        }
        return ipAddress;
    }

    /**
     * @Description 解析ip地址
     * @Author 23DAY
     * @Date 2022/9/15 10:28
     * @Param [java.lang.String]
     * @return java.lang.String
     **/
    public static String getIpSource(String ipAddress) {
        try {
//            通过百度的接口查询
            URL url = new URL("http://opendata.baidu.com/api.php?query=" + ipAddress + "&co=&resource_id=6006&oe=utf8");
            BufferedReader reader = new BufferedReader(new InputStreamReader(url.openConnection().getInputStream(), "utf-8"));
            String line = null;
            StringBuilder result = new StringBuilder();
            while ((line = reader.readLine()) != null) {
                result.append(line);
            }
            reader.close();
            ObjectMapper objectMapper = new ObjectMapper();
            Map<?,?> map = objectMapper.readValue(result.toString(), Map.class);
//            Map map = objectMapper.convertValue(result.toString(), Map.class);
//            Map map = JSON.parseObject(result.toString(), Map.class);
            List<Map<String, String>> data = (List) map.get("data");
            return data.get(0).get("location");
        } catch (Exception e) {
            return "";
        }
    }

    /**
     * @Description 获取访问设备
     * @Author 23DAY
     * @Date 2022/9/15 10:46
     * @Param [javax.servlet.http.HttpServletRequest]
     * @return eu.bitwalker.useragentutils.UserAgent
     **/
    public static UserAgent getUserAgent(HttpServletRequest request){
        return UserAgent.parseUserAgentString(request.getHeader("User-Agent"));
    }

    /**
     * 将字符串渲染到客户端
     *
     * @param response 渲染对象
     * @param string   待渲染的字符串
     */
    public static void render(HttpServletResponse response, String string) {
        try {
             response.setContentType(WebConst.HEADER.CONTENT_TYPE_JSON);
            response.setCharacterEncoding(WebConst.HEADER.CHARSET);
            response.getWriter().write(string);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
