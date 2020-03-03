package com.xor.util;

import java.util.List;

public class Page {
	private int totalRecord;// 表示查询后一共得到多少条结果记录
	private int pageSize; // 表示页面一次要显示多少条记录
	private int totalPage;// 表示将所有的记录进行分页后，一共有多少页
	private int startIndex;// 表示从所有的结果记录中的哪一个编号开始分页查询
	private int currentPage; // 表示用户想看的页数

	public Page(int pageNum, int totalRecord) {
		this.currentPage = pageNum;
		this.totalRecord = totalRecord;

		this.pageSize = 7;// 设置一页默认显示10条查询记录
		this.startIndex = (this.currentPage - 1) * this.pageSize;// 至于为什么this.page要减1，
		// 是因为mysql数据库对于分页查询时，得到的所有的查询记录，第一条记录的编号是从0开始。
		if (this.totalRecord % this.pageSize == 0) {
			this.totalPage = this.totalRecord / this.pageSize;
		} else {
			this.totalPage = this.totalRecord / this.pageSize + 1;
		}

	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
}
