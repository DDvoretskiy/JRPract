package com.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entities.Book;
import com.servicesapi.BooksService;

@Controller
@RequestMapping("books")
public class BooksController {
	
	@Autowired
	BooksService bookServices;
	private static int pageNumber;
	private static String titleFined;
	private static List<Book> list;
	

	@RequestMapping(value={"/page/{pNumber}"}, method = RequestMethod.GET)
	public ModelAndView getPage(@PathVariable int pNumber){
		pageNumber = pNumber;
		if(titleFined == null) {
			titleFined = "";
		}
		Long pages = bookServices.countPage(titleFined);
		if(list == null) {
			list = bookServices.search(pNumber, titleFined);
		}
		ModelAndView view = new ModelAndView("view","list",list);
		view.addObject("pages", pages);	
		return view;
	}
	
	@RequestMapping(value="/{pageNumber}/saveOrUpdate", method=RequestMethod.POST)
	public @ResponseBody Map<String,Object> getSaved(@ModelAttribute Book book){
		Map<String,Object> map = new HashMap<String,Object>();
		
		if(bookServices.saveOrUpdate(book)){
			map.put("status","200");
			map.put("message","Изменения Сохранены");
		}
		
		return map;
	}
	
	
	@RequestMapping(value="/{pageNumber}/listAll", method=RequestMethod.POST)
	public @ResponseBody Map<String,Object> getAll(@ModelAttribute Book book){
		titleFined = "";
		return getTen(book);
	}
	
	@RequestMapping(value="/{pageNumber}/list", method=RequestMethod.POST)
	public @ResponseBody Map<String,Object> getTen(@ModelAttribute Book book){
		Map<String,Object> map = new HashMap<String,Object>();
			list = bookServices.search(pageNumber, titleFined);
			if (list != null){
				map.put("status","200");
				map.put("message","Data found");
				map.put("data", list);
			}else{
				map.put("status","404");
				map.put("message","Data not found");
				
			}
		
		return map;
		}
	
	@RequestMapping(value="/{pageNumber}/delete", method=RequestMethod.POST)
	public @ResponseBody Map<String,Object> delete(Book book){
		Map<String,Object> map = new HashMap<String,Object>();
		
		if(bookServices.delete(book)){
			map.put("status","200");
			map.put("message","Запись удалена");
		}
		
		return map;
	}
	
	@RequestMapping(value="/{pageNumber}/search", method=RequestMethod.POST)
	public @ResponseBody Map<String,Object> getSearch(String title, @ModelAttribute Book book){
		titleFined = title;
		pageNumber = 1;
		getPage(1);
		return getTen(book);
	}
}