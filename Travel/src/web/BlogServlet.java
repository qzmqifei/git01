package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BaseDao;
import po.Blog;
import po.User;
import po.vo.ResultInfo;
import service.BlogService;
import util.JsonUtil;
import util.Page;

/**
 * Servlet implementation class BlogServlet
 */
@WebServlet("/blogServlet")
public class BlogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BlogService blogService = new BlogService();
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接受参数，判断用户行为
		String actionName = request.getParameter("actionName");
		if("blogList".equals(actionName)){
			
			//查询日志
			findBlogList(request,response);
		}else if("deleteBlog".equals(actionName)){
			
			//删除日志
			deleteBlog(request,response);
		}else if("update".equals(actionName)){
			
			//修改日志，数据填充到修改界面文本框
			update(request,response);
	
		}else if("updates".equals(actionName)){
			
			//修改日志
			updates(request,response);
		}else if("add".equals(actionName)){
			
			//添加日志
			addBlog(request,response);
		}else if("showNum".equals(actionName)){
			
			//显示评论数量
			showNum(request,response);
		}
	}

	
	//显示评论的数量
	private void showNum(HttpServletRequest request, HttpServletResponse response) {
		// 接受前台的参数
		String blogId = request.getParameter("blogId");
		//准备sql语句
		String sql = "SELECT tb_blog.*,contentNumber from tb_blog join (select blogId,COUNT(1) contentNumber  from tb_msg GROUP BY blogId) t ON tb_blog.blogId = t.blogId  HAVING blogId = ?";
		//准备参数集合
		List<Object> params = new ArrayList<>();
		params.add(blogId);
		//返回Blog对象
		Blog blog = (Blog) BaseDao.queryRow(sql, params, Blog.class);
		//设置域对象
		request.setAttribute("blog", blog);
	}

	//添加日志
	private void addBlog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 接受前台参数
		User user = (User)request.getSession().getAttribute("user");
		Integer userId = user.getUserId();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		//调用service层的方法，返回结果集
		ResultInfo<Blog> resultInfo = blogService.addBlog(title,content,userId);
		//判断结果集
		if(resultInfo.getCode()==1){
			request.getRequestDispatcher("blogServlet?actionName=blogList").forward(request, response);
		}else{
			request.setAttribute("resultInfo", resultInfo);
			request.getRequestDispatcher("addBlog.jsp").forward(request, response);
		}
		
	}


	//修改日志
	private void updates(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		//接受前台的参数
		String blogId = request.getParameter("blogId");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		ResultInfo<Blog> resultInfo = blogService.updates(blogId,title,content);
		//结果集的判断
		if(resultInfo.getCode()==1){
			request.getRequestDispatcher("blogServlet?actionName=blogList").forward(request, response);
		}else{
			request.setAttribute("resultInfo", resultInfo);
			request.getRequestDispatcher("updateBlog.jsp").forward(request, response);
		}
	}



	//修改日志，数据填充到修改界面文本框
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接受前台的参数
		String blogId = request.getParameter("blogId");
		//调用service层的方法
		ResultInfo<Blog> resultInfo = blogService.checkBlog(blogId);
		//判断结果集
		System.out.println(blogId);
		if(resultInfo.getResult()!=null){
			request.setAttribute("Blog", resultInfo.getResult());
			request.getRequestDispatcher("updateBlog.jsp").forward(request, response);
		}else{
			response.sendRedirect("blogServlet?actionName=blogList");
		}
		
	}

	//删除指定的日志
	private void deleteBlog(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 接受前台的参数
		String blogId = request.getParameter("blogId");
		//调用service层的方法并返回一个结果集
		ResultInfo<Blog> resultInfo = blogService.deleteBlog(blogId);
		//把结果集传递给前台的回调函数
		JsonUtil.toJson(response, resultInfo);
		
	}
	
	
	//显示所有的日志并做分页
	private void findBlogList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获得用户Id
		User user = (User) request.getSession().getAttribute("user");
		Integer userId = user.getUserId();
		//接受前台的参数
		String pageNumstr = request.getParameter("pageNum");
		String pageSizestr = request.getParameter("pageSize");
		//调用service层的方法，返回一个对象集合
		Page<Blog> page = blogService.findBlogList(pageNumstr,pageSizestr,userId);
		//响应格式
		response.setContentType("text/html;charset=UTF-8");
		//将list存到request作用域中
		request.setAttribute("page", page);
		//请求转发到指定页面
		request.getRequestDispatcher("blog.jsp").forward(request, response);
		
		// 接受前台的参数
		String blogId = request.getParameter("blogId");
		//准备sql语句
		String sql = "SELECT tb_blog.*,contentNumber from tb_blog join (select blogId,COUNT(1) contentNumber  from tb_msg GROUP BY blogId) t ON tb_blog.blogId = t.blogId  HAVING blogId = ?";
		//准备参数集合
		List<Object> params = new ArrayList<>();
		params.add(blogId);
		//返回Blog对象
		Blog blog = (Blog) BaseDao.queryRow(sql, params, Blog.class);
		//设置域对象
		request.setAttribute("blog", blog);
	}

}
