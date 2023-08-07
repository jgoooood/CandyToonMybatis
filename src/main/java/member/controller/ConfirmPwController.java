package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class ConfirmPwController
 */
@WebServlet("/member/confirmPw.do")
public class ConfirmPwController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmPwController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/confirmPw.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId = request.getParameter("memberId");
		String memberEmail = request.getParameter("memberEmail");
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberEmail(memberEmail);
		
		MemberService service = new MemberService();
		Member mOne = service.confirmPw(member);
		if(mOne != null) {
			HttpSession session = request.getSession();
			session.setAttribute("memberId", mOne.getMemberId());
			session.setAttribute("memberPw", mOne.getMemberPw());
			
			request.setAttribute("msg", "[정보일치] 비밀번호 재설정페이지로 이동합니다");
			request.setAttribute("url", "/member/changePw.do");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "[정보불일치] 입력 정보를 확인해주세요.");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp").forward(request, response);
		}
	}

}
