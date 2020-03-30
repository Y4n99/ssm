package controller;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pojo.Books;
import service.BooksService;
import util.Page;

@Controller
public class BooksController {

	@Resource
	private BooksService bs;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(
			@RequestParam(value = "sel", required = false, defaultValue = "0") Integer sel,
			@RequestParam(value = "text", required = false, defaultValue = "") String text,
			Page page, Model model) {
		List<Books> list = null;
		page.setPagecount(bs.count());
		int pagenum = (page.getPageno() - 1) * page.getPagesize();
		int pagesize = page.getPagesize();
		if (sel != 0 && text != "") {
			Books books = new Books();
			int count = 0;
			if (sel == 1) {
				String bookName = text;
				count = bs.Bycount(bookName, null, null);
				list = bs.findByCondition(bookName, null, null, pagenum,
						pagesize);
			} else if (sel == 2) {
				String bookAuthor = text;
				count = bs.Bycount(null, bookAuthor, null);
				list = bs.findByCondition(null, bookAuthor, null, pagenum,
						pagesize);
			} else if (sel == 3) {
				String bookPublish = text;
				count = bs.Bycount(null, null, bookPublish);
				list = bs.findByCondition(null, null, bookPublish, pagenum,
						pagesize);
			}
			page.setPagecount(count);
		} else {
			list = bs.findAll(pagenum, pagesize);
		}
		model.addAttribute("sel", sel);
		model.addAttribute("text", text);
		model.addAttribute("page", page);
		model.addAttribute("list", list);
		return "home";
	}

	@RequestMapping(value = "/add")
	public String add() {
		return "add";
	}

	@RequestMapping(value = "/add.do", method = RequestMethod.POST)
	public String adddo(Books books) {
		int count = bs.addBooks(books);
		if (count > 0) {
			return "redirect:/home";
		} else {
			return "redirect:/add";
		}
	}
}
