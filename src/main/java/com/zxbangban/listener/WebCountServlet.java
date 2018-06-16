package com.zxbangban.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Properties;

@WebServlet(name = "WebCountServlet")
public class WebCountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext servletContext = request.getServletContext();
        InputStream inputStream = WebCountServlet.class.getClassLoader().getResourceAsStream("dbinfo.properties");
        InputStream stream = this.getServletContext().getResourceAsStream("dbinfo.properties");
        // 创建属性对象
        Properties properties = new Properties();
        properties.load(stream);
        String count = properties.getProperty("totalcount");
        Integer totalcount=Integer.parseInt(count);
        try {
            totalcount = Integer.parseInt((String) servletContext.getAttribute("nums"));
        } catch (Exception e) {
            totalcount = 0;
        }
        totalcount += 1;
        servletContext.setAttribute("totalcount", String.valueOf(totalcount));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
