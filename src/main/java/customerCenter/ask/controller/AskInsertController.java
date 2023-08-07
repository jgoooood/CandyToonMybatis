package customerCenter.ask.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customerCenter.ask.model.service.AskService;
import customerCenter.ask.model.vo.Ask;

/**
 * Servlet implementation class AskformController
 */
@WebServlet("/ask/insert.do")
public class AskInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AskInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/customerCenter/ask/askInsert.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AskService service = new AskService();
		request.setCharacterEncoding("UTF-8");
		String askCategory = request.getParameter("askCategory");
		String askSubject = request.getParameter("askSubject");
		String askContent = request.getParameter("askContent");
		String askWriter = request.getParameter("memberId");
		Ask ask = new Ask(askCategory, askSubject, askContent, askWriter);
		int result = service.insertAsk(ask);
		if(result > 0) {
			response.sendRedirect("/ask/list.do");
		} else {
			request.setAttribute("msg", "내용등록에 실패했습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp").forward(request, response);
		}
	}

}
