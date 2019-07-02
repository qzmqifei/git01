package service;

import java.util.List;

import dao.BlogDao;
import po.Blog;
import po.vo.ResultInfo;
import util.Page;
import util.StringUtil;

public class BlogService {

	BlogDao blogDao = new BlogDao();
	
	public Page<Blog> findBlogList(String pageNumstr, String pageSizestr, Integer userId) {
		Integer pageNum = 1;//默认开始页
		Integer pageSize = 4;//默认每页显示的数量
		if(!StringUtil.isEmpty(pageNumstr)){
			pageNum = Integer.parseInt(pageNumstr);
		}
		if(!StringUtil.isEmpty(pageSizestr)){
			pageSize = Integer.parseInt(pageSizestr);
		}
		// 非空判断
		if(userId<1){
			return null;
		}
		//用户ID不为空
		long totalCount = blogDao.findAll(userId);
		if(totalCount>0){
			Page<Blog> page = new Page<>(pageNum,pageSize,totalCount);
			Integer num = (pageNum-1)*pageSize;
			List<Blog> list = blogDao.findBlogList(userId,num,pageSize);
			//集合的非空判断
			if(list.size()==0){
				return null;
			}
			page.setDataList(list);
			return page;
		}
		return null;
		
		
	}

	//删除指定日志
	public ResultInfo<Blog> deleteBlog(String blogId) {
		ResultInfo<Blog> resultInfo = new ResultInfo<Blog>();
		// 判断blogId
		if(StringUtil.isEmpty(blogId)){
			resultInfo.setCode(0);
			return resultInfo;
		}
		int row = blogDao.deleteBlogByBlogId(blogId);
		//判断受影响的行数
		if(row>0){
			resultInfo.setCode(1);
			return resultInfo;
		}
		resultInfo.setCode(0);
		return resultInfo;
	}

	//查到指定Id的日志
	public ResultInfo<Blog> checkBlog(String blogId) {
		ResultInfo<Blog> resultInfo = new ResultInfo<>();
		if(StringUtil.isEmpty(blogId)){
			return resultInfo;
		}
		//调用dao层的查询方法
		Blog blog = blogDao.checkBlog(blogId);
		if(blog!=null){
			resultInfo.setResult(blog);
		}
		return resultInfo;
	}

	//修改日志
	public ResultInfo<Blog> updates(String blogId, String title, String content) {
		ResultInfo<Blog> resultInfo = new ResultInfo<>();
		//非空判断
		if(StringUtil.isEmpty(blogId)||StringUtil.isEmpty(title)||StringUtil.isEmpty(content)){
			resultInfo.setCode(0);
			resultInfo.setMsg("日志标题或者日志内容不能为空!");
			return resultInfo;
		}
		//调用Dao层的方法
		int row = blogDao.updates(blogId,title,content);
		if(row>0){
			resultInfo.setCode(1);
			return resultInfo;
		}else{
			resultInfo.setCode(0);
			resultInfo.setMsg("日志修改失败!");
			return resultInfo;
		}
		
	}

	//添加日志
	public ResultInfo<Blog> addBlog(String title, String content,Integer userId) {
		ResultInfo<Blog> resultInfo = new ResultInfo<>();
		//参数的非空判断
		if(StringUtil.isEmpty(title)||StringUtil.isEmpty(content)){
			resultInfo.setCode(0);
			resultInfo.setMsg("日志标题或者日志内容不能为空!");
			return resultInfo;
		}
		//调用Dao层的方法，返回收影响行数
		int row = blogDao.addBlog(title,content,userId);
		//判断受影响行数
		if(row>0){
			resultInfo.setCode(1);
			return resultInfo;
		}else{
			resultInfo.setCode(0);
			resultInfo.setMsg("日志添加失败!");
			return resultInfo;
		}
	}

}
