package Model;


	import java.util.ArrayList;
	import java.util.List;

	import org.apache.ibatis.session.SqlSession;
	import org.apache.ibatis.session.SqlSessionFactory;

import DataBase.SqlSessionManager;

	public class BoardDAO {

		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		
		public List<BoardDTO> allBoard(){
			List<BoardDTO> boards = new ArrayList<>();
			try {
				boards = sqlSession.selectList("BoardDAO.allBoard");
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				sqlSession.close();
			}
			return boards;
		}
		
		 public int writeBoard(BoardDTO board) {
	           int result = 0;
	           try {
	               // 게시글 삽입 쿼리 실행
	               result = sqlSession.insert("BoardDAO.writeBoard", board);
	           } catch (Exception e) {
	               e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
	           } finally {
	               sqlSession.close();
	           }
	           return result;
	       }

	}

