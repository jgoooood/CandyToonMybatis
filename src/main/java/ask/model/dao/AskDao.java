package ask.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import ask.model.vo.Ask;

public class AskDao {
	public int insertAsk(SqlSession session, Ask ask) {
		int result = session.insert("AskMapper.insertAsk", ask);
		return result;
	}
	
	//마이바티스로 자동으로 페이징처리 : RowBounds->행의 바운더리 설정
	//currentPage를 매개변수로 받아야만 offset(시작값) / limit(끝값)계산가능
	public List<Ask> selectAskList(SqlSession session, int currentPage) {
		/*
		 * RowBounds : 쿼리문을 변경하지 않고도 페이징을 처리할 수 있게 해주는 클래스
		 * RowBounds의 동작은 offset, limit값을 이용해서 동작함
		 * offset : 시작값->변하는 값
		 * limit : 한 페이지당 보여주고 싶은 게시물의 개수
		 * 1페이지 : 0*10부터 시작해서 10개를 가지고 옴 1 ~ 10
		 * 2페이지 : 1*10부터시작해서 10개를 가지고 옴 11 ~ 20
		 * 3페이지 : 2*20부터시작해서 10개를 가지고 옴 21 ~ 30
		 */
		int limit = 5; //페이지당 보여줄 게시물 개수->끝값
		int offset = (currentPage-1)*limit; //시작값
		RowBounds rowBounds = new RowBounds(offset, limit);
		//rowBounds는 세번째 인자로 들어가야함
		List<Ask> aList= session.selectList("AskMapper.selectAskList", null, rowBounds);
		return aList;
	}

	//페이지네비게이터 생성 메소드 : currentPage를 매개변수로 받아야함
	public String generatePageNavi(SqlSession session, int currentPage) {
		//------------------ 1. 생성할 네비게이터 수를 먼저 계산 ------------------
		// -> 1) 전체게시물수 구하기 : 전체 행을 동적으로 구하는 getTotalCount메소드생성->세션 넘겨받아야 함
		int totalCount = getTotalCount(session);
		// -> 2)페이지당 보여줄 목록 수
		int recordCountPerPage = 5;
		// -> 3)네비게이터 수 계산
		int naviTotalCount = 0;
		if(totalCount % recordCountPerPage > 0) {
			naviTotalCount = totalCount / recordCountPerPage +1;
		} else {
			naviTotalCount = totalCount / recordCountPerPage;		
		}
		//-------------------------- 1. 네비게이터 수 완료 -------------------------
		
		//------------------------- 2. 네비게이터 범위설정 -------------------------
		// -> 1) 한 범위당 보여줄 네비게이터 개수
		int naviCountPerPage = 5;
		// -> 2) 범위별(페이지당)로 보여질 네비게이터 시작값, 마지막값 구하기
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		//---------------------- 2. 네비게이터 범위설정 완료 ----------------------
		
		//---------------------- 3. 이전버튼, 다음버튼 생성 ----------------------
		// -> 1) 이전버튼, 다음버튼 생성여부 판단
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi == 1) {
			needPrev = false;
		}
		if(endNavi == naviTotalCount) {
			needNext = false;
		}
		// -> 2) StringBuffer로 이전, 다음버튼 및 네비게이터 연결
		StringBuffer result = new StringBuffer();
		if(needPrev) {
			result.append("<a href='/ask/list.do?currentPage="+(startNavi-1)+"'><</a> ");
		}
		for(int i = startNavi; i < naviTotalCount; i++) {
			result.append("<a href='/ask/list.do?currentPage="+i+"'>" + i + "</a>");
		}
		if(needNext) { 
			result.append("<a href='/ask/list.do?currentPage="+(endNavi+1)+"'>></a>");
		}
		return result.toString();
	}

	//전체행을 구하는 메소드->db연결해서 select해야와 함
	private int getTotalCount(SqlSession session) {
		int totalCount = session.selectOne("AskMapper.getTotalCount");
		return totalCount;
	}

	public Ask selectOneByNo(SqlSession session, int askNo) {
		Ask askOne = session.selectOne("AskMapper.selectOneByNo", askNo);
		return askOne;
	}

	public int updateAsk(SqlSession session, Ask ask) {
		int result = session.update("AskMapper.updateAsk", ask);
		return result;
	}

	public int deleteAsk(SqlSession session, int askNo) {
		int result = session.delete("AskMapper.deleteAsk", askNo);
		return result;
	}

	


}
