package member.model.dao;

import org.apache.ibatis.session.SqlSession;

import member.model.vo.Member;

public class MemberDAO {

	public int insertMember(SqlSession session, Member member) {
		int result = session.insert("MemberMapper.insertMember", member);
		return result;
	}

	public Member loginCheck(SqlSession session, Member member) {
		Member mOne = session.selectOne("MemberMapper.loginCheck", member);
		return mOne;
	}

	public Member selectOneById(SqlSession session, String memberId) {
		Member member = session.selectOne("MemberMapper.selectOneById", memberId);
		return member;
	}

	public Member confirmPw(SqlSession session, Member member) {
		Member confrimOne = session.selectOne("MemberMapper.confirmPw", member);
		return confrimOne;
	}

	public int changePw(SqlSession session, Member member) {
		int result = session.update("MemberMapper.changePw", member);
		return result;
	}

	public Member findId(SqlSession session, Member member) {
		Member findMember = session.selectOne("MemberMapper.findId", member);
		return findMember;
	}

}
