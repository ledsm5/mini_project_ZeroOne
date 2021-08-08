package service.formation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfo;
import Model.FormationDTO;
import repository.FormationRepository;

public class FormationListService {
	@Autowired
	FormationRepository formationRepository;
	
	public void forList(HttpSession session , Model model) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo"); 
		String memId = authInfo.getUserId();
			
		
		List<FormationDTO> list = formationRepository.forList(memId);		
		model.addAttribute("listFor",list);
		
	}
}
