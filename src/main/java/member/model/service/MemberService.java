package member.model.service;

import java.sql.Connection;
import java.sql.SQLException;

import common.JDBCTemplate;
import member.model.dao.MemberDAO;
import member.model.vo.Member;

public class MemberService {
	JDBCTemplate jdbcTemplate;
	MemberDAO mDao;
	
	public MemberService() {
		mDao = new MemberDAO();
		jdbcTemplate = JDBCTemplate.getInstance();
	}
	
	public int insertMember(Member member) {
		//연결생성 메소드 호출
		Connection conn = jdbcTemplate.createConnection();
		// DAO에 연결생성값과 user정보 전달
		int result = mDao.insertMember(conn, member);
		if (result > 0) {
			jdbcTemplate.commit(conn); //인서트 성공하면 커밋메소드 호출
		} else {
			jdbcTemplate.rollback(conn); // 인서트 실패하면 롤백메소드 호출
		}
		//연결닫아주기
		jdbcTemplate.close(conn);
		return result;
	}

	public Member loginCheck(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		Member mOne = mDao.loginCheck(conn, member);
		jdbcTemplate.close(conn);
		return mOne;
	}

	public Member selectOneById(String memberId) {
		Connection conn = jdbcTemplate.createConnection();
		Member member = mDao.selectOneById(conn, memberId);
		jdbcTemplate.close(conn);
		return member;
	}

	public Member confirmPw(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		Member mOne = mDao.confirmPw(conn, member);
		jdbcTemplate.close(conn);
		return mOne;
	}

	public int changePw(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		int result = mDao.changePw(conn, member);
		jdbcTemplate.close(conn);
		return result;
	}

	public Member findId(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		Member mOne = mDao.findId(conn, member);
		jdbcTemplate.close(conn);
		return mOne;
	}

}
