package controller.ajax;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ajax")
public class AjaxController {

	@RequestMapping("ajaxTest1")
	public String ajaxTest1(@ModelAttribute(value="n")String n ) {
		
		return "formation/formationHome";
	}
	
	
	
	
}
