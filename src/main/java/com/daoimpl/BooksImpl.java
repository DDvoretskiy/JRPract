package com.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.daoapi.BooksDao;
import com.entities.Book;


@Repository
@Transactional
public class BooksImpl implements BooksDao{

	@Autowired
	SessionFactory sessionFactory;
	private int pageSize = 10;
	
	public boolean saveOrUpdate(Book book) {
		sessionFactory.getCurrentSession().saveOrUpdate(book);
		return true;
	}

	@SuppressWarnings("unchecked")
	public List<Book> list() {
		Session session = sessionFactory.openSession();
		List<Book> result = session.createQuery("from Book").getResultList();
		session.close();
		return result;
	}
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Book> list(int pageNumber) {
		Session session = sessionFactory.getCurrentSession();
		
		Criteria criteria = session.createCriteria(Book.class);
		

		criteria.setFirstResult((pageNumber - 1) * pageSize);
		criteria.setMaxResults(pageSize);
		List<Book> firstPage = criteria.list();
		return firstPage;
	}
	
	@SuppressWarnings("deprecation")
	public Long countPage(String title){
		Session session = sessionFactory.getCurrentSession();
		Criteria criteriaCount = session.createCriteria(Book.class).add(Restrictions.like("title", title, MatchMode.START));
		criteriaCount.setProjection(Projections.rowCount());
		
		Long count = (Long) criteriaCount.uniqueResult();
		Long countPage = count/pageSize;
		if(count % pageSize != 0)
			countPage += 1;
		return countPage;
	}
	

	public boolean delete(Book book) {
		try{
			sessionFactory.getCurrentSession().delete(book);
		}catch(Exception ex){
			return false;
		}
		
		return true;
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Book> search(int pageNumber, String title) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Book.class).add(Restrictions.like("title", title, MatchMode.START));
		criteria.setFirstResult((int) ((pageNumber - 1) * pageSize));
		criteria.setMaxResults(pageSize);
		
		List<Book> titlePage = criteria.list();
		
		return titlePage;
	}	
	
}

