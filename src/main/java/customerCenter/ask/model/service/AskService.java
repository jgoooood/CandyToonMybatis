package customerCenter.ask.model.service;

import java.sql.Connection;
import java.util.List;

import common.JDBCTemplate;
import customerCenter.ask.model.dao.AskDao;
import customerCenter.ask.model.vo.Ask;
import customerCenter.ask.model.vo.PageData;

public class AskService {
	JDBCTemplate jdbcTemplate;
	AskDao aDao;
	public AskService() {
		jdbcTemplate = JDBCTemplate.getInstance();
		aDao = new AskDao();
	}
	
	public int insertAsk(Ask ask) {
		Connection conn = jdbcTemplate.createConnection();
		int result = aDao.insertAsk(conn, ask);
		jdbcTemplate.close(conn);
		return result;
	}

	
	public PageData selectAskList(int currentPage) {
		Connection conn = jdbcTemplate.createConnection();
		List<Ask> aList = aDao.selectAskList(conn, currentPage);
		//17. currentPage를 DAO.generatePageNavi에 전달하는 코드와 전달 후 
		// generatePageNavi메소드의 결과 값을 받을 값을 String타입의 pageNavi로 받아야 함.
		String pageNavi = aDao.generatePageNavi(currentPage);
		//18. 리스트값과 네비게이터를 모두 보내기 위해서는 새로 객체생성함
		// 두 값 controller로 반환하기 위해 방법1.map이용 2.pageDate클래스 생성
		// 새로운 객체 생성후 selectAskList메소드의 반환타입도 List에서 객체로 반환타입 변경해줘야함
		PageData pData = new PageData(aList, pageNavi);
		jdbcTemplate.close(conn);
		// 19. 반환타입이 변경됐기 때문에 controller에서도 반환값을 받을 타입을 변경해줘야함
		return pData;
	}

}
