package dao;

import java.util.ArrayList;
import java.util.List;

import com.mysql.fabric.xmlrpc.base.Params;

import po.Collect;
import po.Place;

public class PlaceDao {

	
	
	/**
	 * 查询景点信息集合
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Place> findPlaceList() {
		//sql查询所有景点信息
		String sql = "select * from tb_place";
		List<Object> params  = new ArrayList<>();
		//查询所有place对象信息
		List<Place> places =BaseDao.queryRows(sql, params, Place.class);
		
		return places;
	}
	
	

	/**
	 * 验证信息是否被收藏
	 * @param placeId
	 * @param userId
	 * @return
	 */
	public Collect checkcollect(String placeId, Integer userId) {
		//定义sql
		String sql = "select * from tb_collect where placeId = ? and userId = ?";
		//参数集合
		List<Object> params = new ArrayList<>();
		params.add(placeId);
		params.add(userId);
		
		Collect collect = (Collect) BaseDao.queryRow(sql, params, Collect.class);
		return collect;
	}

	
	/**
	 * 查看景点详细信息
	 * @param placeId
	 * @return
	 */
	public Place viewDetail(String placeId) {
		String sql = "select * from tb_place where placeId = ?";
		
		List<Object> params = new ArrayList<>();
		params.add(placeId);
		Place place = (Place) BaseDao.queryRow(sql, params, Place.class);
		return place;
	}

	
	/**
	 * 添加收藏
	 * @param placeId
	 * @param userId
	 * @return
	 */
	public int collectPlace(String placeId, Integer userId) {
		//定义sql语句
		String sql = "insert into tb_collect (collectId,placeId,userId) values (null,?,?)";
		//定义params集合
		List<Object> params = new ArrayList<>();
		params.add(placeId);
		params.add(userId);
		//获得被影响行数
		int row = BaseDao.executeUpdate(sql, params);
		return row;
	}

	
	
	/**
	 * 解除收藏关系
	 * @param placeId
	 * @param userId
	 * @return
	 */
	public int deletecollectPlace(String placeId, Integer userId) {
		//定义sql语句
		String sql = "delete from tb_collect where placeId = ? and userId = ?";
		//定义params集合
		List<Object> params = new ArrayList<>();
		params.add(placeId);
		params.add(userId);
		//获得被影响行数
		int row = BaseDao.executeUpdate(sql, params);
		return row;
	}
	
//	public static void main(String[] args) {
//		
//		PlaceDao placeDao = new PlaceDao();
//		System.out.println(placeDao.findPlaceList());
//		
//	}

	
}
