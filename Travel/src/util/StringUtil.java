package util;


/**
 * 字符串工具
 * @author WinterDai
 *
 */
public class StringUtil {
	/**
	 * 字符串判空
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str) {
		if (str == null || "".equals(str.trim())) {
			return true;
		}
		return false;
		
	}
}
