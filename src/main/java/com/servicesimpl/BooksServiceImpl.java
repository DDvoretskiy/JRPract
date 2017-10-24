package com.servicesimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoapi.BooksDao;
import com.entities.Book;
import com.servicesapi.BooksService;

@Service
public class BooksServiceImpl implements BooksService{

	@Autowired
	BooksDao bookDao;
	
	public boolean saveOrUpdate(Book book) {
		return bookDao.saveOrUpdate(book);
	}

	public List<Book> list(int pageNumber) {
		return bookDao.list(pageNumber);
	}

	public boolean delete(Book book) {
		return bookDao.delete(book);
	}

	public List<Book> search(int pageNumber, String title) {
		return bookDao.search(pageNumber, title);
	}

	public Long countPage(String title) {
		return bookDao.countPage(title);
	}

	public List<Book> list() {
		return bookDao.list();
	}	
	
}
