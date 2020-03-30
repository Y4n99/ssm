package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.BooksMapper;

import pojo.Books;

@Service
public class BooksServiceImpl implements BooksService {

	@Resource
	private BooksMapper bm;

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return bm.count();
	}

	@Override
	public List<Books> findAll(int pagenum, int pagesize) {
		// TODO Auto-generated method stub
		return bm.findAll(pagenum, pagesize);
	}

	@Override
	public int addBooks(Books books) {
		// TODO Auto-generated method stub
		return bm.addBooks(books);
	}

	@Override
	public List<Books> findByCondition(String bookName, String bookAuthor,
			String bookPublish, int pagenum, int pagesize) {
		// TODO Auto-generated method stub
		return bm.findByCondition(bookName, bookAuthor, bookPublish, pagenum,
				pagesize);
	}

	@Override
	public int Bycount(String bookName, String bookAuthor, String bookPublish) {
		// TODO Auto-generated method stub
		return bm.Bycount(bookName, bookAuthor, bookPublish);
	}

}
