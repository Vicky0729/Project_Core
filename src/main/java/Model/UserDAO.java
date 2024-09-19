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

    // 아이디 중복 체크 함수
    public boolean isIdDuplicated(String userId) {
        SqlSession session = sqlSessionFactory.openSession();
        boolean isDuplicated = false;
        try {
            // 1. 아이디로 사용자 정보 조회하는 쿼리 실행
            String result = session.selectOne("UserMapper.checkId", userId);

            // 2. 조회 결과가 null이 아니면 중복된 아이디가 있다는 의미
            if (result != null) {
                isDuplicated = true; // 중복된 아이디가 있다.
            }
        } finally {
            session.close();
        }
        return isDuplicated; // 중복 여부를 반환
    }

}
