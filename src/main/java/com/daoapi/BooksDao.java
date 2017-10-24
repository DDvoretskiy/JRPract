package com.daoapi;

import java.util.List;

import com.entities.Book;

public interface BooksDao {
	public boolean saveOrUpdate(Book book);
	public List<Book> list(int pageNumber);
	public Long countPage(String title);
	public boolean delete(Book book);
	public List<Book> search(int pageNumber, String title);
	public List<Book> list();
}
