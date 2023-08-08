package customerCenter.ask.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customerCenter.ask.model.service.AskService;

/**
 * Servlet implementation class DeleteController
 */
@WebServlet("/ask/delete.do")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int askNo = Integer.parseInt(request.getParameter("askNo"));
		AskService service = new AskService();
		int result = service.deleteAsk(askNo);
		if(result > 0) {
			request.getRequestDispatcher("/ask/list.do").forward(request, response);
		} else {
			request.setAttribute("msg", "삭제가 완료되지 않았습니다.");
			request.setAttribute("url", "/ask/list.do");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
