package common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//마이바티스 연결 순서
// 1. mybatis-config.xml 연결에 필요한 접속정보 저장
public class SqlSessionTemplate {
	public static SqlSession getSqlSession() {
		String resource = "mybatis-config.xml";
		SqlSession session = null;
		try {
			//mybatis-config.xml파일 읽기 위해 input스트림 코드 추가
			InputStream is = Resources.getResourceAsStream(resource);
			//1. 연결공장을 만드는 사람(builder)이 연결공장을 만듬
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			//2. 공장이 연결 만듬->사람이 만든 is파일을 읽음
			SqlSessionFactory factory = builder.build(is);
			//3. 공장이 세션 오픈->session 변수에 담아주고 session 리턴
			session = factory.openSession();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return session;
	}
}
