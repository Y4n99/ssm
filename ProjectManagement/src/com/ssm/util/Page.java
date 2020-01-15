package com.ssm.util;

/**
 * ��ҳ������
 * 
 * @author lkk
 * 
 */
public class Page {
	// ��ǰҳ��
	private int pageno = 1;

	// ҳ������
	private int pagesize = 3;

	// �ܼ�¼��
	private int count;

	// ��ҳ��
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

	// ������ҳ����ҳ�����������ҳ��
	public void setPagecount(int count) {
		if (count % this.pagesize != 0) {
			this.pagecount = count / this.pagesize + 1;
		} else {
			this.pagecount = count / this.pagesize;
		}
	}

}
