package ask.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import ask.model.dao.AskDao;
import ask.model.vo.Ask;
import ask.model.vo.PageData;
import common.SqlSessionTemplate;

public class AskService {
	AskDao aDao;
	
	public AskService() {
		aDao = new AskDao();
	}
	
	public int insertAsk(Ask ask) {
		//mybatis연결생성
		SqlSession session = SqlSessionTemplate.getSqlSession();
		//DAO에 연결값과 Ask 객체 전달
		int result = aDao.insertAsk(session, ask);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		//연결닫기
		session.close();
		return result;
	}

	
	public PageData selectAskList(int currentPage) {
		//mybatis연결생성 : SqlSession - SqlSessionTemplate.getSqlSession();
		SqlSession session = SqlSessionTemplate.getSqlSession();
		List<Ask> aList = aDao.selectAskList(session, currentPage);
		//17. currentPage를 DAO.generatePageNavi에 전달하는 코드와 전달 후 
		// generatePageNavi메소드의 결과 값을 받을 값을 String타입의 pageNavi로 받아야 함.
		String pageNavi = aDao.generatePageNavi(session, currentPage);
		//18. 리스트값과 네비게이터를 모두 보내기 위해서는 새로 객체생성함
		// 두 값 controller로 반환하기 위해 방법1.map이용 2.pageDate클래스 생성
		// 새로운 객체 생성후 selectAskList메소드의 반환타입도 List에서 객체로 반환타입 변경해줘야함
		PageData pData = new PageData(aList, pageNavi);
		session.close();
		// 19. 반환타입이 변경됐기 때문에 controller에서도 반환값을 받을 타입을 변경해줘야함
		return pData;
	}

	public Ask selectOneByNo(int askNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Ask askOne = aDao.selectOneByNo(session, askNo);
		session.close();
		return askOne;
	}

	public int updateAsk(Ask ask) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		//DAO에 연결값과 Ask 객체 전달
		int result = aDao.updateAsk(session, ask);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		//연결닫기
		session.close();
		return result;
	}

	public int deleteAsk(int askNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		//DAO에 연결값과 Ask 객체 전달
		int result = aDao.deleteAsk(session, askNo);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		//연결닫기
		session.close();
		return result;
	}

}
