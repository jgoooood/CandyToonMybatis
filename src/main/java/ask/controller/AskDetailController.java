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
 * Servlet implementation class AskDetailController
 */
@WebServlet("/ask/detail.do")
public class AskDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AskDetailController() {
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
		if(ask != null) {
			request.setAttribute("ask", ask);
			request.getRequestDispatcher("/WEB-INF/views/customerCenter/ask/askDetail.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "작성글을 불러올 수 없습니다.");
			request.setAttribute("url", "/index.jsp");
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
