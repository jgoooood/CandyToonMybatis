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
 * Servlet implementation class ChangePwController
 */
@WebServlet("/member/changePw.do")
public class ChangePwController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePwController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/changePw.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("memberId");
		String memberPw = request.getParameter("newPW");
		Member member = new Member(memberId, memberPw);
		
		MemberService service = new MemberService();
		int result = service.changePw(member);
		if(result > 0) {
			request.setAttribute("msg", "[비밀번호 변경완료] 로그인 페이지로 이동합니다.");
			request.setAttribute("url", "/member/login.do");
			request.getRequestDispatcher("/WEB-INF/common/serviceSuccess.jsp").forward(request, response);
		} else {

			request.setAttribute("msg", "[비밀번호 변경실패] 입력정보를 확인해주세요.");
			request.getRequestDispatcher("/WEB-INF/common/serviceFailed.jsp").forward(request, response);
		}
	}

}
