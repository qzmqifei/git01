package util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

public class JsonUtil {
	public static void toJson(HttpServletResponse response,Object obj) throws IOException{
		//设置响应类型及编码
		response.setContentType("application/json;charset=UTF-8");
		//得到输出流
		PrintWriter out = response.getWriter();
		//将对象转换成JSON格式的字符串
		String json = JSON.toJSONString(obj);
		//将字符串响应给AJAX的回调函数
		out.write(json);
		out.flush();
		out.close();
	}
}
