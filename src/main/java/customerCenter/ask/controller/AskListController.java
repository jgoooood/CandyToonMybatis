package customerCenter.ask.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customerCenter.ask.model.service.AskService;
import customerCenter.ask.model.vo.Ask;
import customerCenter.ask.model.vo.PageData;

/**
 * Servlet implementation class AskController
 */
@WebServlet("/ask/list.do")
public class AskListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AskListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//삼항연산자를 이용해서 넘어주는 값이 없으면 현재페이지를 1로 세팅하는 코드
		String page = request.getParameter("currentPage") != null ? request.getParameter("currentPage") : "1";
		//DB에서 목록가져오기
		//SELECT * FROM ASK_TBL;
		AskService service = new AskService();
		int currentPage = Integer.parseInt(page);
		// 20. service.selectAskList메소드의 반환값을 받기 위해 List타입에서 PageData 타입으로 변경
		PageData pData = service.selectAskList(currentPage);
		// 21. List<Ask> aList는 PageData에서 getter메소드로 값을 불러옴
		List<Ask> aList = pData.getaList();
		// 22. JSP에서 값을 쓸 수 있도록 세팅->${aList}, ${pageNavi}통해 값을 넣을 수 있음
		request.setAttribute("aList", aList);
		request.setAttribute("pageNavi", pData.getPageNavi());
		request.getRequestDispatcher("/WEB-INF/views/customerCenter/ask/askList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
