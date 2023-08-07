package member.model.dao;

import java.sql.Connection;

import member.model.vo.Member;

public class MemberDAO {

	public int insertMember(Connection conn, Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Member loginCheck(Connection conn, Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	public Member selectOneById(Connection conn, String memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Member confirmPw(Connection conn, Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	public int changePw(Connection conn, Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Member findId(Connection conn, Member member) {
		// TODO Auto-generated method stub
		return null;
	}

}
