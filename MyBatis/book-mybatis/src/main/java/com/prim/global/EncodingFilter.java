package com.prim.global;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 编码过滤器
 * @author prim
 */
public class EncodingFilter implements Filter {
    private String encoding = "utf-8";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String paramName = "encoding";
        if (filterConfig.getInitParameter(paramName) != null){
            encoding = filterConfig.getInitParameter(paramName);
        }
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        request.setCharacterEncoding(encoding);
        response.setCharacterEncoding(encoding);
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}