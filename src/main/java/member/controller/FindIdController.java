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
 * Servlet implementation class FindIdController
 */
@WebServlet("/member/findId.do")
public class FindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/findId.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//*한글입력값 전달할 때 인코딩해야 오류 안남*
		request.setCharacterEncoding("UTF-8");
		String memberName = request.getParameter("memberName");
		String memberEmail = request.getParameter("memberEmail");
		Member member = new Member();
		member.setMemberName(memberName);
		member.setMemberEmail(memberEmail);
		
		MemberService service = new MemberService();
		Member mOne = service.findId(member);
		if(mOne != null) {
			HttpSession session = request.getSession();
			session.setAttribute("memberId", mOne.getMemberId());
			
			request.setAttribute("msg", "일치하는 정보를 찾았습니다.");
			request.setAttribute("url", "/member/findIdResult.do");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "일치하는 정보가 없습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp").forward(request, response);
		}
	}

}
