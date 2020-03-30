package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Books;

public interface BooksMapper {

	// ��ѯ�����ܼ�¼��
	int count();

	// ��ѯ���ݲ���ҳ
	List<Books> findAll(@Param("pagenum") int pagenum,
			@Param("pagesize") int pagesize);

	// �ṩ�ֱ����������ߡ��������ѯͼ��Ķ�̬������ѯ
	List<Books> findByCondition(@Param("bookName") String bookName,
			@Param("bookAuthor") String bookAuthor,
			@Param("bookPublish") String bookPublish,
			@Param("pagenum") int pagenum, @Param("pagesize") int pagesize);

	// �ṩ�ֱ����������ߡ��������ѯͼ��Ķ�̬������ѯ�ܼ�¼��
	int Bycount(@Param("bookName") String bookName,
			@Param("bookAuthor") String bookAuthor,
			@Param("bookPublish") String bookPublish);

	// ��������
	int addBooks(Books books);
}
