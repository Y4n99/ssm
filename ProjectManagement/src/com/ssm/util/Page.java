package com.ssm.util;

/**
 * 分页工具类
 * 
 * @author lkk
 * 
 */
public class Page {
	// 当前页数
	private int pageno = 1;

	// 页面容量
	private int pagesize = 3;

	// 总记录数
	private int count;

	// 总页数
	private int pagecount;

	public int getPageno() {
		return pageno;
	}

	public void setPageno(int pageno) {
		this.pageno = pageno;
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPagecount() {
		return pagecount;
	}

	// 根据总页数和页面容量求出总页数
	public void setPagecount(int count) {
		if (count % this.pagesize != 0) {
			this.pagecount = count / this.pagesize + 1;
		} else {
			this.pagecount = count / this.pagesize;
		}
	}

}
