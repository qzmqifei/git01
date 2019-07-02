package service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import dao.CommentDao;
import dao.UserDao;
import po.Comment;
import po.User;
import po.vo.ResultInfo;
import util.StringUtil;

public class UserService {

	private UserDao userDao = new UserDao();
	private CommentDao commentDao = new CommentDao();
	
	public List<Comment> commentList(String uname,String blogId){
		String sql = "select * from tb_msg where uname='"+uname+"' and blogId="+blogId+"";
		return commentDao.findComment(sql,blogId);
	}
	
	public ResultInfo<Comment> userComment(String message,String uname,String date,String blogId){
		ResultInfo<Comment> result = new ResultInfo<>();
		Comment comment = new Comment(message,uname,date,blogId);
		String sql = "insert into tb_msg(mcomment,uname,msgTime,blogId) values('"+message+"','"+uname+"','"+date+"',"+blogId+")";
		if(commentDao.update(sql, null)){
			System.out.println("新增成功!");
			result.setResult(comment);
			result.setCode(1);
			return result;
		}
		return null;
	}
	
	public ResultInfo<User> userLogin(String uname,String upwd){
		//得到rusultInfo封装类对象
		ResultInfo<User> resultInfo = new ResultInfo<>();
		
		//回显数据
		User u = new User();
		u.setUname(uname);
		u.setUpwd(upwd);
		resultInfo.setResult(u);
		
		if (StringUtil.isEmpty(uname) || StringUtil.isEmpty(upwd)) {
			resultInfo.setCode(0);
			resultInfo.setMsg("用户名或密码不可为空");
			return resultInfo;
			
		}
		// 2、调用Dao层的查询方法，通过用户名查询用户对象，返回的是 用户对象user
		User user  = userDao.findUserByName(uname);
		
		if(user == null) {
			// 如果为空，设置ResultInfo对象的code=0，msg="用户名不存在！"，返回 resultInfo对象
			resultInfo.setCode(0);
			resultInfo.setMsg("用户不存在");
			return resultInfo;
		}
		
		if(upwd.equals(user.getUpwd())) {
			//如果相等，设置ResultInfo对象的code=1，msg="登录成功！"，返回 resultInfo对象
			resultInfo.setCode(1);
			resultInfo.setMsg("登录成功");
			resultInfo.setResult(user);
			return resultInfo;
		}
		
		// 如果不相等，设置ResultInfo对象的code=0，msg="用户密码不正确！"，返回 resultInfo对象
		resultInfo.setCode(0);
		resultInfo.setMsg("用户密码不正确");
		return resultInfo;
	}

	public ResultInfo<User> userRegister(String uname, String upwd, String email,String head) {
		// TODO Auto-generated method stub
		ResultInfo<User> resultInfo = new ResultInfo<>();
		//如果头像为空给个默认头像
			head="疯了.jpg";
		int row = UserDao.addUser(uname,upwd,email,head);
		// 判断受影响的行数，如果大于0成功，否则失败
		if (row > 0) {
			// 成功后根据用户名来查询该用户名下的信息后添加到resultInfo
			User user  = userDao.findUserByName(uname);
			resultInfo.setResult(user);
			user.setHead(head);
			resultInfo.setCode(1);
			resultInfo.setResult(user);
			
		} else {
			resultInfo.setCode(0);
			resultInfo.setMsg("添加失败");
		}
		return resultInfo;
	}

	public ResultInfo<User> saveUserMsg(String nick, String sex, String mood, String phone, String email,String uname) {
		// TODO Auto-generated method stub
		ResultInfo<User> resultInfo=new ResultInfo<>();
		int row=UserDao.saveUserMsg(nick,sex,mood,phone,email,uname);
		if(row>0){
			// 重新更新user对象
			User user  = userDao.findUserByName(uname);
			resultInfo.setResult(user);
			resultInfo.setCode(1);
			resultInfo.setMsg("修改成功");
		}else{
			resultInfo.setCode(0);
			resultInfo.setMsg("修改失败");
		}
		return resultInfo;
	}
	//修改用户头像
	public ResultInfo<User> headFile(HttpServletRequest request) throws IOException, ServletException {
		ResultInfo<User>resultInfo=new ResultInfo<>();
		User user = (User) request.getSession().getAttribute("user");
		String head = user.getHead();
		String uname=user.getUname();
		// ==================5、实现文件上传=================
				// 1、得到Part对象   request.getPart(name):name代表的是文件域的name属性值
				Part part = request.getPart("img");
				// 2、得到上传文件的名称
				String fileName = part.getSubmittedFileName();
				// 3、判断文件名是否为空
				if (!StringUtil.isEmpty(fileName)) {
					// 如果不为空，将文件上传到指定路径，并给头像重新赋值
					head = fileName;
					// 得到文件存放的路径
					String path = request.getServletContext().getRealPath("/WEB-INF/upload/");
					// 上传文件
					part.write(path + fileName);
				}
				
				// 重新更新user对象
				user.setHead(head);
			
				
				
				// 6、调用Dao层的修改方法，通过用户 ID修改用户信息，返回受影响的行数
				int row = UserDao.headFile(head,uname);
				
				// 7、判断受影响的行数是否大于0
				if (row > 0) {
					resultInfo.setCode(1);
					resultInfo.setMsg("更新成功！");
					resultInfo.setResult(user); // web层更新session对象
				} else {
					resultInfo.setCode(0);
					resultInfo.setMsg("更新失败！");
				}
		return resultInfo;
	}
	
	
}
