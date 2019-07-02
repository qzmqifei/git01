package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import po.Collect;
import po.Place;
import po.User;
import po.vo.ResultInfo;
import service.PlaceService;

/**
 * Servlet implementation class PlaceServelt
 */
@WebServlet("/placeServlet")
public class PlaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private PlaceService placeService = new PlaceService();

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String actionName = request.getParameter("actionName");
		
		if("place".equals(actionName)) {
			
			//查看景点信息
			findPlaceList(request,response);
		}else if ("vieworcheck".equals(actionName)) {
			
			//查看景点详细信息并验证是否已经被当前用户所收藏
			viewOrCheck(request,response);
			
		}else if ("collectplace".equals(actionName)) {
			
			//收藏景点信息
			collectPlace(request,response);
			
		}else if ("deletecollectplace".equals(actionName)) {
			
			//解除收藏关系
			deleteCollectPlace(request,response);
		}
	}

	
	/**
	 * 解除收藏关系
	 * @param request
	 * @param response
	 */
	private void deleteCollectPlace(HttpServletRequest request, HttpServletResponse response) {
		// 通过session拿到当前登录用户的ID
		User user = (User) request.getSession().getAttribute("user");
		Integer userId = user.getUserId();
		
		//获取当前查看的资讯的ID
		String placeId = request.getParameter("placeId");
		
		ResultInfo<Place> resultInfo = placeService.deletercollectPlace(placeId,userId);
		//设置域对象向用户提示解除收藏成功
		request.setAttribute("resultInfo1", resultInfo);
				
		
	}


	/**
	 * 收藏景点信息
	 * @param request
	 * @param response
	 */
	private void collectPlace(HttpServletRequest request, HttpServletResponse response) {
		
		// 通过session拿到当前登录用户的ID
		User user = (User) request.getSession().getAttribute("user");
		Integer userId = user.getUserId();
		
		
		
		//获取当前查看的资讯的ID
		String placeId = request.getParameter("placeId");
		
		ResultInfo<Place> resultInfo = placeService.collectPlace(placeId,userId);
		//设置域对象向用户提示收藏成功
		request.setAttribute("resultInfo", resultInfo);
		
	}


	/**
	 * 查看景点详细信息并验证是否已经被当前用户所收藏
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void viewOrCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 通过session拿到当前登录用户的ID
	/*	User user = (User) request.getSession().getAttribute("user");
		Integer userId = user.getUserId();*/
		
		Integer userId = 1;
		
		//获取当前查看的资讯的ID
		String placeId = request.getParameter("placeId");
		
		//创建Collect对象得到service层返回的collect
		Collect collect = placeService.findCollect(placeId,userId);
		
		//创建Place对象得到service层返回的place
		Place place = placeService.view(placeId);
		
		//设置到域对象
		request.setAttribute("collect", collect);
		request.setAttribute("place", place);
		
		//请求转发值至places-single.jsp
		request.getRequestDispatcher("place-single.jsp").forward(request, response);
	}


	/**
	 * 查看景点集合
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void findPlaceList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//调用service层逻辑判断
		List<Place> list =placeService.findPlace();
		
		//设置到域对象
		request.setAttribute("list", list);
		
		//请求转发值至places.jsp
		request.getRequestDispatcher("places.jsp").forward(request, response);
		
		
		
	}

}
