package com.mvc.app;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.model.Customer;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "redirect:/createNewVideo/manageAccount";
	}
	
	@RequestMapping(value = "/createNewVideo/manageAccount", method = RequestMethod.GET)
	public String manageAccount(Model model, JdbcCorporateEventDao dao) {
		logger.info( "inside manageAccount ");
		Customer customer = new Customer(1, "shubham", 23);
		logger.debug("customer "+customer);
		dao.insert(customer); 
        Customer customer1 = dao.findByCustomerId(1);
        logger.debug("customer1 "+customer1);
        System.out.println(customer1);
		return "manageAccount";
	}
	
//	@RequestMapping(value)
}
