package ask.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ask.model.service.AskService;
import ask.model.vo.Ask;

/**
 * Servlet implementation class AskModifyController
 */
@WebServlet("/ask/modify.do")
public class AskModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AskModifyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AskService service = new AskService();
		int askNo = Integer.parseInt(request.getParameter("askNo")); 
		Ask ask = service.selectOneByNo(askNo);
		request.setAttribute("ask", ask);
		request.getRequestDispatcher("/WEB-INF/views/customerCenter/ask/askModify.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int askNo = Integer.parseInt(request.getParameter("askNo"));
		String askCategory = request.getParameter("askCategory");
		String askSubject = request.getParameter("askSubject");
		String askContent = request.getParameter("askContent");
		Ask ask = new Ask(askNo, askCategory, askSubject, askContent);
		AskService service = new AskService();
		int result = service.updateAsk(ask);
		if(result > 0) {
//			request.setAttribute("ask", ask);
//			request.getRequestDispatcher("/ask/detail.do?askNo"+askNo).forward(request, response);
			// 단순 페이지 이동은 response.sendRedirect사용
			response.sendRedirect("/ask/detail.do?askNo="+askNo);
		} else {
			request.setAttribute("msg", "수정이 완료되지 않았습니다.");
			request.setAttribute("url", "/ask/modify.do");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp").forward(request, response);
		}
	}

}
