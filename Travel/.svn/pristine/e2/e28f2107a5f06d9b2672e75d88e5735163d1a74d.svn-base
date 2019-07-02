package util;

import java.util.List;

public class Page<T> {
	private Integer pageNum;//当前页
	private Integer pageSize;//每页显示的页数
	private long totalCount;//总数量
	
	private Integer totalPages;//总页数
	private Integer prePage;//上一页
	private Integer nextPage;//下一页
	private Integer startNavPage;//导航开始数
	private Integer endNavPage;//导航结束数
	
	private List<T> dataList;//当前页的数据列表

	public Page(Integer pageNum, Integer pageSize, long totalCount) {
		super();
		this.pageNum = pageNum;
		this.pageSize = pageSize;
		this.totalCount = totalCount;
		
		//总页数
		totalPages = (int) Math.ceil(totalCount/(pageSize*1.0));
		
		//上一页
		prePage = pageNum-1<1?1:pageNum-1;
		
		//下一页
		nextPage = pageNum+1>totalPages?totalPages:pageNum+1;
		
		//导航开始页
		startNavPage = pageNum-5;
		if(pageNum-5<1){
			startNavPage = 1;
			endNavPage = startNavPage+9>totalPages?totalPages:startNavPage+9;
		}
		//导航结束页
		endNavPage = pageNum+4;
		if(pageNum+4>totalPages){
			endNavPage = totalPages;
			startNavPage = endNavPage-9<1?1:endNavPage-9;
		}
	}

	public Integer getPageNum() {
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public Integer getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}

	public Integer getPrePage() {
		return prePage;
	}

	public void setPrePage(Integer prePage) {
		this.prePage = prePage;
	}

	public Integer getNextPage() {
		return nextPage;
	}

	public void setNextPage(Integer nextPage) {
		this.nextPage = nextPage;
	}

	public Integer getStartNavPage() {
		return startNavPage;
	}

	public void setStartNavPage(Integer startNavPage) {
		this.startNavPage = startNavPage;
	}

	public Integer getEndNavPage() {
		return endNavPage;
	}

	public void setEndNavPage(Integer endNavPage) {
		this.endNavPage = endNavPage;
	}

	public List<T> getDataList() {
		return dataList;
	}

	public void setDataList(List<T> dataList) {
		this.dataList = dataList;
	}
	
	
}
