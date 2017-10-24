package com.servicesapi;

import java.util.List;

import com.entities.Book;

public interface BooksService {
	public boolean saveOrUpdate(Book book);
	public List<Book> list(int pageNumber);
	public List<Book> list();
	public boolean delete(Book book);
	public List<Book> search(int pageNumber, String title);
	public Long countPage(String title);
}
