package co.mini.prj.common;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DataSource {
	private static SqlSessionFactory sqlSessionFactory;
	private DataSource() {};
	
	public static SqlSessionFactory getInstance() {
		// Mybatis config 연결 (리소스로 사용)
		String resource="config/mybatis-config.xml";
		
		// 데이터를 읽기 위해
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return sqlSessionFactory;
	};
}
