package Model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DataBase.SqlSessionManager;

public class UserDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public int join(UserDTO dto) {
		int result = sqlSession.insert("join", dto);
		if(result > 0) {
			System.out.println("회원 가입 성공!");
		}
		sqlSession.close();
		return result;
	}

}
