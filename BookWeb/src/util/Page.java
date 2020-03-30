package util;

/**
 * 分页工具类
 * 
 * @author lkk
 * 
 */
public class Page {
	private int pageno = 1; // 当前页面
	private int pagesize = 4; // 页面容量
	private int pagecount; // 总页数

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

	public int getPagecount() {
		return pagecount;
	}

	public void setPagecount(int count) {
		if (count % this.pagesize == 0) {
			this.pagecount = count / this.pagesize;
		} else {
			this.pagecount = count / this.pagesize + 1;
		}
	}

}
