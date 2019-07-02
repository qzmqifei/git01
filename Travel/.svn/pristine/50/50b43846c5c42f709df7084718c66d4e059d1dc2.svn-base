package web;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;import java.io.PrintWriter;import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FileUtils;
import com.alibaba.fastjson.JSON;
import po.Comment;
import po.User;
import po.vo.ResultInfo;
import service.UserService;

import util.StringUtil;
import util.JsonUtil;
/**
 * 首页
 */
@WebServlet("/userServlet")
@MultipartConfig
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UserService userService = new UserService();

	
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//判定用户行为
		String actionName = request.getParameter("actionName");
		//用户登陆
		if("login".equals(actionName)){
			userLogin(request,response);
		}else if("comment".equals(actionName)){
			userComment(request,response);
		}else if("comPage".equals(actionName)){
			comPage(request,response);
		}
		//加载用户头像
		else if("userHead".equals(actionName)){
			userHead(request,response);	
			//注销退出
		}
		else if("logout".equals(actionName)){
			logout(request,response);
			//注册用户
		}else if("register".equals(actionName)){
			register(request,response);
		}
			//修改用户信息
		else if("saveUserMsg".equals(actionName)){
			saveUserMsg(request,response);
		}
		//修改头像文件
		else if("headFile".equals(actionName)){
			headFile(request,response);
		}
	}
	private void headFile(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
	
		ResultInfo<User> resultInfo=userService.headFile(request);
		request.getSession().setAttribute("user", resultInfo.getResult());
		if (resultInfo.getCode() == 1) {
			// 如果成功，更新session作用域，跳转到个人中心页面
			request.getSession().setAttribute("user", resultInfo.getResult());
			request.getRequestDispatcher("user.jsp").forward(request, response);
		}

	}

	//修改用户信息
	private void saveUserMsg(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String nick=request.getParameter("nick");
		String sex=request.getParameter("sex");
		String mood=request.getParameter("mood");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		ResultInfo<User> resultInfo=userService.saveUserMsg(nick,sex,mood,phone,email,uname);
		request.getSession().setAttribute("user", resultInfo.getResult());
	
		// 1、设置响应类型及编码
				response.setContentType("application/json;charset=UTF-8");
				// 2、得到输出流
				PrintWriter out = response.getWriter();
				// 将对象转换成json格式的字符串
				String json = JSON.toJSONString(resultInfo);
				// 将json字符串响应给ajax回调函数
				out.write(json);
				// 关闭资源
				out.close();
}


private void comPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String blogId = request.getParameter("blogId");
		String uname = request.getParameter("uname");
		String btitle = request.getParameter("btitle");
		String btext = request.getParameter("btext");
		request.setAttribute("comment",userService.commentList(uname,blogId));
		request.setAttribute("blogId", blogId);
		request.setAttribute("btitle", btitle);
		request.setAttribute("btext", btext);
		request.getRequestDispatcher("blog-single.jsp").forward(request, response);
		
	}

	private void userComment(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String message = request.getParameter("message");
		User user = (User)request.getSession().getAttribute("user");
		String uname = user.getUname();
		String blogId = request.getParameter("blogId");
		String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		ResultInfo<Comment> result = userService.userComment(message, uname, date,blogId);
		System.out.println(result);
		JsonUtil.toJson(response, result);
	}


	//注册用户
	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("user");
		String upwd=request.getParameter("password");
		String email=request.getParameter("email");
		String head=null;
		//调用Service的方法，返回注册结果
		ResultInfo<User> resultInfo = userService.userRegister(uname, upwd,email,head);
		//3、根据注册结果，跳转不同的页面
		if(resultInfo.getCode() == 1){
			request.getSession().setAttribute("user",resultInfo.getResult());
			if (resultInfo.getCode()==1) {
				response.sendRedirect("index.jsp");
			}		
		}else {
			request.setAttribute("resultInfo",resultInfo);
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
			
		}
		
	}
	//加载头像
	private void userHead(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String fileName=request.getParameter("fileName");
		if(StringUtil.isEmpty(fileName)){
			return;
		}
		//得到图片存放在服务器中的路径  getRealPath()
		String filePath=request.getServletContext().getRealPath("/WEB-INF/upload/" + fileName);
		File file=new File(filePath);
		//判断file对象是否存在，并且是一个标准文件
		if(file.exists()&&file.isFile()){
			//得到图片的索引
			String pic=fileName.substring(fileName.lastIndexOf(".")+1);
			//判断图片类型返回响应
			if ("png".equalsIgnoreCase(pic)) {
				response.setContentType("image/png");
			} else if ("gif".equalsIgnoreCase(pic)) {
				response.setContentType("image/gif");
			} else if ("jpg".equalsIgnoreCase(pic) || "jpeg".equalsIgnoreCase(pic)) {
				response.setContentType("image/jpeg");
			}
		}
		FileUtils.copyFile(file, response.getOutputStream());
	}
	//用户退出
	private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		// 1、销毁session对象
				request.getSession().invalidate();
				
				// 2、删除cookie对象
				// 得到要删除的cookie对象
				Cookie cookie = new Cookie("user",null);
				// 设置cookie的MaxAge属性为0，表示删除cookie对象
				cookie.setMaxAge(0);
				// 响应cookie对象
				response.addCookie(cookie);
				
				// 3、跳转到登录页面
				response.sendRedirect("login.jsp");
	}



	private void userLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		//获取参数
		String uname = request.getParameter("uname");
		String upwd = request.getParameter("upwd");
		
		//调用Service的方法，返回登录结果
		ResultInfo<User> resultInfo = userService.userLogin(uname, upwd);
		
		//3、根据登录结果，跳转不同的页面
		if(resultInfo.getCode() == 1){
			request.getSession().setAttribute("user",resultInfo.getResult());
			HttpSession session=request.getSession();
			String rem = request.getParameter("rem");
			if ("1".equals(rem)) {
				session.setAttribute("user", resultInfo.getResult());
				Cookie cookie  = new Cookie("user", uname +"-"+ upwd);
				cookie.setMaxAge(60);
				response.addCookie(cookie);
			}
			response.sendRedirect("indexServlet");
			
		}else {
			request.setAttribute("resultInfo",resultInfo);
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
			
		}
	}

	

}
