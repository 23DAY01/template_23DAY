package site.day.template.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.MediaType;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;
import site.day.template.constant.CommonConst;
import site.day.template.constant.WebConst;
import site.day.template.utils.StringUtil;


/**
 * @Description 可重复使用的InputStream
 * @ClassName RepeatableFilter
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
public class RepeatableFilter extends OncePerRequestFilter {
//    @Override
//    public void init(FilterConfig filterConfig) throws ServletException {
//    }

//    @Override
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//            throws IOException, ServletException {
//
//        System.out.println("2222222222222222");
//
//        ServletRequest requestWrapper = null;
//        if (request instanceof HttpServletRequest && StringUtil.startsWithIgnoreCase(request.getContentType(), MediaType.APPLICATION_JSON_VALUE)) {
//            requestWrapper = new BodyReaderRequestWrapper((HttpServletRequest) request);
//            response.setCharacterEncoding(WebConst.CODE.UTF8);
//        }
//        if (null == requestWrapper) {
//            chain.doFilter(request, response);
//        } else {
//            chain.doFilter(requestWrapper, response);
//        }
//    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {

        System.out.println(request.getSession().getMaxInactiveInterval());
        System.out.println(request.getSession().getLastAccessedTime());
        System.out.println(request.getSession().getCreationTime());
        System.out.println(request.getSession().getId());


        ServletRequest requestWrapper = null;
        if (request instanceof HttpServletRequest && StringUtil.startsWithIgnoreCase(request.getContentType(), MediaType.APPLICATION_JSON_VALUE)) {
            requestWrapper = new BodyReaderRequestWrapper((HttpServletRequest) request);
            response.setCharacterEncoding(WebConst.CODE.UTF8);
        }
        if (null == requestWrapper) {
            filterChain.doFilter(request, response);
        } else {
            filterChain.doFilter(requestWrapper, response);
        }
    }

//    @Override
//    public void destroy() {
//    }
}
