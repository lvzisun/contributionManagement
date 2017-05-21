package util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Controller
@Service
@Repository
@Component
public class MybatisUtil {
	private static SqlSessionFactory sf;
	static{
		InputStream is=null;
		try {
//			is=Resources.getResourceAsStream("mybatis-config.xml");
			is=new ClassPathResource("mybatis-config.xml").getInputStream();
			sf=new SqlSessionFactoryBuilder().build(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(is!=null){
				try {
					is.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	
	public static SqlSession getSession(){
		return sf.openSession();
	}
	
	public static void close(SqlSession session){
		session.close();
	}
}
