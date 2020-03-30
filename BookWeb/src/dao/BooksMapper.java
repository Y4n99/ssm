package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Books;

public interface BooksMapper {

	// 查询数据总记录数
	int count();

	// 查询数据并分页
	List<Books> findAll(@Param("pagenum") int pagenum,
			@Param("pagesize") int pagesize);

	// 提供分别按书名、作者、出版社查询图书的动态条件查询
	List<Books> findByCondition(@Param("bookName") String bookName,
			@Param("bookAuthor") String bookAuthor,
			@Param("bookPublish") String bookPublish,
			@Param("pagenum") int pagenum, @Param("pagesize") int pagesize);

	// 提供分别按书名、作者、出版社查询图书的动态条件查询总记录数
	int Bycount(@Param("bookName") String bookName,
			@Param("bookAuthor") String bookAuthor,
			@Param("bookPublish") String bookPublish);

	// 增加新书
	int addBooks(Books books);
}
