package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/member/register.do")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberId = request.getParameter("memberId");
		String memberPw = request.getParameter("memberPw");
		String memberEmail = request.getParameter("memberEmail");
		String memberName = request.getParameter("memberName");
		// 폼태그에서 입력받은 데이터를 객체로 저장함
		Member member = new Member(memberId, memberPw, memberEmail, memberName);
		// service 호출하기 위해 객체 생성
		MemberService service = new MemberService();
		// 저장한 데이터를 service로 넘김->db에 저장할 쿼리문 생각->반환받을 결과를 담을 변수데이터 정하기
		//쿼리문 : INSERT INTO USER_TBL VALUES(?, ?, ?, ?); -> int형 변수로 받기
		int result = service.insertMember(member);
		if(result > 0) {
			request.setAttribute("msg", "회원가입이 완료되었습니다.");
			request.setAttribute("url", "/index.jsp");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/common/member/serviceFailed.jsp").forward(request, response);
		}
	}

}
