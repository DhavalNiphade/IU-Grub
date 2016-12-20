package web.com.iugrub.controller.login;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.com.iugrub.pojo.FoodStore;
import app.com.iugrub.service.api.SearchServiceAPI;
import web.com.iugrub.controller.filters.FiltersController;

@Controller
public class LoginController {

	
	@RequestMapping(value = "/login")
	public ModelAndView getHome(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView("login");
		
	//	for(FoodStore objStore)
		return model;
	}
	
}
