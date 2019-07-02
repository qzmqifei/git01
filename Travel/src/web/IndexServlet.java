package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 首页
 */
@WebServlet("/indexServlet")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 查询首页所需要的数据
		
		
		// 设置首页动态包含的页面值
		//request.setAttribute("changePage", "note/list.jsp");
		// 跳转到index.jsp
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
