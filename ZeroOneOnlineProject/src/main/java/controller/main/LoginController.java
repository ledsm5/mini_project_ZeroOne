package controller.main;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.LoginCommand;
import service.main.LoginService;
import validator.LoginCommandValidator;

@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	LoginService loginService;
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String main() {
		return "redirect:/";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String login(LoginCommand loginCommand,Errors errors, HttpSession session,HttpServletResponse response) {
		new LoginCommandValidator().validate(loginCommand,errors);
		if(errors.hasErrors()) {
			return "main/main";
		}
		
		loginService.login(loginCommand,errors,session,response);
		if(errors.hasErrors()) {
			return "main/main";
		}
		return "main/home";
	}
}
