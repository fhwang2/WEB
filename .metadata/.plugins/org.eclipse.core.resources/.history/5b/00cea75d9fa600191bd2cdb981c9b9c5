package kr.mycom.jdbc;

/* <MVC모델 만들기>
 * Model1 의 구조에서 중복되는 코드를 뽑아내 함수 또는 클래스 단위로 만듬 --> servlet
 * 
 * Tomcat 6 --> 
 * Tomcat 7(java5:annotation) --> Annotation
 * 
 */


import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

//서블릿 부르는 전체 url = http://localhost:8989/190712_DB/DBCPInit
//urlPatterns : 
//loadOnStartup : 톰캣 실행할 때 자동으로 불러오기
@WebServlet(loadOnStartup = 1, value="")
public class DBCPInit_0712 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override //재정의, 초기화가 필요한 것 = init에 넣음 : 등록되면서 호출의 대상이 됨
	public void init(ServletConfig config) throws ServletException {
		loadJDBCDriver();
		initConnectionPool();
	}


	private void loadJDBCDriver() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	

	//DBCPinit
	private void initConnectionPool() {
		try {
			String jdbcUrl = 
					"jdbc:mysql://localhost:3306/mydb?" + 
					"useUnicode=true&characterEncoding=utf8";
			String username = "root";
			String pw = "54321";

			ConnectionFactory connFactory = 
					new DriverManagerConnectionFactory(jdbcUrl, username, pw);

			PoolableConnectionFactory poolableConnFactory = 
					new PoolableConnectionFactory(connFactory, null);
			poolableConnFactory.setValidationQuery("select 1");

			GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
			poolConfig.setTimeBetweenEvictionRunsMillis(1000L * 60L * 5L);
			poolConfig.setTestWhileIdle(true);
			poolConfig.setMinIdle(4);
			poolConfig.setMaxTotal(50);

			GenericObjectPool<PoolableConnection> connectionPool = 
					new GenericObjectPool<>(poolableConnFactory, poolConfig);
			poolableConnFactory.setPool(connectionPool);
			
			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver = 
					(PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
			driver.registerPool("guestbook", connectionPool);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	}//initConnectionPool

	
}
