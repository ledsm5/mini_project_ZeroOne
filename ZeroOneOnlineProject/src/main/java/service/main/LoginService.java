package service.main;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import Model.AuthInfo;
import command.LoginCommand;
import repository.LoginRepository;

public class LoginService {
	@Autowired
	LoginRepository loginRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	public void login(LoginCommand loginCommand,Errors errors,HttpSession session,HttpServletResponse response) {
		String userId = loginCommand.getUserId();
		AuthInfo authInfo = loginRepository.login(userId);
		
		if(authInfo == null) {
			errors.rejectValue("userId", "notId");
		}else {
			if(bcryptPasswordEncoder.matches(loginCommand.getUserPw(),authInfo.getUserPw())) {
				session.setAttribute("authInfo", authInfo);
				if(loginCommand.getIdStore() != null) {
					System.out.println(loginCommand.getIdStore());
					Cookie cookie = new Cookie("idStore",authInfo.getUserId());
					cookie.setPath("/");
					cookie.setMaxAge(60*60*24*30);
					response.addCookie(cookie);
					System.out.println(cookie);
				}else {
					Cookie cookie = new Cookie("idStore","");
					cookie.setPath("/");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
				
				
			}else {
				errors.rejectValue("userPw", "notPw");
			}
		}
		
	}
		
		public AuthInfo loginVal(String userId,String userPw) { //회원가입에서 중복확인
			AuthInfo authInfo= loginRepository.login(userId);
			return authInfo;
		}
		
		
		
}
