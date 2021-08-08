package service.main;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;


public class CookieService {
	public void getCookie(HttpServletRequest request) {
	//사용자로부터 쿠키를 받아옴  
		Cookie [] cookies = request.getCookies();
		if(cookies != null && cookies.length > 0) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().startsWith("id")) {
					request.setAttribute("isId", cookie.getValue());
					System.out.println(cookie.getValue());
				}
			
			}
		}
		
		
		
	}
}
