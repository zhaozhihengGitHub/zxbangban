import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.io.*;
import java.util.Properties;

public class CountServletContextListener implements ServletContextListener,HttpSessionListener {

    // Public constructor is required by servlet spec
    public CountServletContextListener() {
    }

    // -------------------------------------------------------
    // ServletContextListener implementation
    // -------------------------------------------------------
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext servletContext = sce.getServletContext();
        String totalCount = "";
        String computerCount="";
        String telphoneCount="";
//第一步是取得一个Properties对象
        Properties props = new Properties();
//第二步是取得配置文件的输入流
        //InputStream is = CountServletContextListener.class.getClassLoader().getResourceAsStream("dbinfo.properties");//在非WEB环境下用这种方式比较方便
        try {
          InputStream is = new FileInputStream("dbinfo.properties");//在WEB环境下用这种方式比较方便，不过当配置文件是放在非Classpath目录下的时候也需要用这种方式
//第三步讲配置文件的输入流load到Properties对象中，这样在后面就可以直接取来用了
            props.load(is);
            totalCount = props.getProperty("totalCount");
            telphoneCount=props.getProperty("telphoneCount");
            computerCount=props.getProperty("computerCount");
            servletContext.setAttribute("totalCount",totalCount);
            servletContext.setAttribute("computerCount",computerCount);
            servletContext.setAttribute("telphoneCount",telphoneCount);
            is.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public void contextDestroyed(ServletContextEvent sce) {
       ServletContext servletContext = sce.getServletContext();
        String nums = (String) servletContext.getAttribute("totalCount");
        String computerCount = (String) servletContext.getAttribute("computerCount");
        String telphoneCount = (String) servletContext.getAttribute("telphoneCount");
        //第一步也是取得一个Properties对象
        Properties props = new Properties();
//第二步也是取得该配置文件的输入流
      InputStream is = CountServletContextListener.class.getClassLoader().getResourceAsStream("dbinfo.properties");
        try {
//第三步是把配置文件的输入流load到Properties对象中，
            props.load(is);
//接下来就可以随便往配置文件里面添加内容了
            props.setProperty("totalCount", nums);
            props.setProperty("computerCount",computerCount);
            props.setProperty("telphoneCount",telphoneCount);
//在保存配置文件之前还需要取得该配置文件的输出流，<span style="color: #ff0000; font-size: medium;">切记，</span>如果该项目是需要导出的且是一个非WEB项目，则该配置文件应当放在根目录下，否则会提示找不到配置文件
            try {
                OutputStream out = new FileOutputStream("dbinfo.properties");
//最后就是利用Properties对象保存配置文件的输出流到文件中;
            props.store(out, null);
            is.close();
            out.close();
            }catch (Exception e){
                System.out.println("关闭异常！！！！！！！！！！！！");
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("异常！！");
        }
    }
    // Public constructor is required by servlet spec
    // -------------------------------------------------------
    // HttpSessionListener implementation
    // -------------------------------------------------------
    public void sessionCreated(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        ServletContext servletContext = se.getSession().getServletContext();
        String totalCount = (String)servletContext.getAttribute("totalCount");
        int i = Integer.parseInt(totalCount);
        i++;
        servletContext.setAttribute("totalCount",String.valueOf(i));
    }

    public void sessionDestroyed(HttpSessionEvent se) {
      /* Session is destroyed. */
    }
}
