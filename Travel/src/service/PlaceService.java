package service;

import java.util.List;

import dao.BaseDao;
import dao.PlaceDao;
import po.Collect;
import po.Place;
import po.vo.ResultInfo;

public class PlaceService {
	
	private PlaceDao placeDao = new PlaceDao();
	private ResultInfo<Place> resultInfo = new ResultInfo<>();
	
	/**
	 * 查询景点信息集合
	 * @return
	 */
	public List<Place> findPlace() {
		List<Place> list = placeDao.findPlaceList();
		if(list != null) {
			return list;
		}
		return null;
	}

	
	/**
	 *  验证该资讯是否已经被当前用户所收藏
	 * @param placeId
	 * @param userId
	 * @return
	 */
	public Collect findCollect(String placeId, Integer userId) {
		// 验证collect对象
		Collect collect = placeDao.checkcollect(placeId,userId);
		if(collect !=null) {
			return collect;
		}
		return null;
	}

	
	/**
	 * 查看景点详细信息
	 * @param placeId
	 * @return
	 */
	public Place view(String placeId) {
		
		Place place = placeDao.viewDetail(placeId);
		
		return place;
	}


	/**
	 * 添加收藏
	 * @param placeId
	 * @param userId
	 * @return
	 */
	public ResultInfo<Place> collectPlace(String placeId, Integer userId) {
		//获得添加收藏的被影响行数
		int row = placeDao.collectPlace(placeId, userId);
		if(row > 0) {
			resultInfo.setCode(1);
			resultInfo.setMsg("收藏成功");
		}else {
			resultInfo.setCode(0);
			resultInfo.setMsg("收藏失败");
		}
		return resultInfo;
	}
	

	/**
	 * 解除收藏关系
	 * @param placeId
	 * @param userId
	 * @return
	 */
	public ResultInfo<Place> deletercollectPlace(String placeId, Integer userId) {
		//获得解除收藏的被影响行数
		int row = placeDao.deletecollectPlace(placeId, userId);
		
		if(row > 0) {
			resultInfo.setCode(1);
			resultInfo.setMsg("收藏成功");
		}else {
			resultInfo.setCode(0);
			resultInfo.setMsg("收藏失败");
		}
		return resultInfo;
	}
}
