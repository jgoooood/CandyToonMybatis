package member.model.service;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;

import common.SqlSessionTemplate;
import member.model.dao.MemberDAO;
import member.model.vo.Member;

public class MemberService {
	MemberDAO mDao;
	
	public MemberService() {
		mDao = new MemberDAO();
	}
	
	public int insertMember(Member member) {
		//mybatis 연결생성
		SqlSession session = SqlSessionTemplate.getSqlSession();
		// DAO에 연결생성값과 user정보 전달
		int result = mDao.insertMember(session, member);
		if (result > 0) {
			session.commit(); //인서트 성공하면 커밋메소드 호출
		} else {
			session.rollback(); // 인서트 실패하면 롤백메소드 호출
		}
		//연결닫아주기
		session.close();
		return result;
	}

	public Member loginCheck(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Member mOne = mDao.loginCheck(session, member);
		session.close();
		return mOne;
	}

	public Member selectOneById(String memberId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Member member = mDao.selectOneById(session, memberId);
		session.close();
		return member;
	}

	public Member confirmPw(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Member mOne = mDao.confirmPw(session, member);
		session.close();
		return mOne;
	}

	public int changePw(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = mDao.changePw(session, member);
		//dml은 반드시 결과값을 확인해서 커밋과 롤백해줘야함 
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public Member findId(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Member mOne = mDao.findId(session, member);
		session.close();
		return mOne;
	}

}
