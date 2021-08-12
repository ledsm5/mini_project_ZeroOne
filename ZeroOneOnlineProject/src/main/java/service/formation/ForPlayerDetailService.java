package service.formation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.FormationDTO;
import Model.PlayerDTO;
import repository.FormationRepository;

public class ForPlayerDetailService {
	@Autowired
	FormationRepository formationRepository;
	public void forPlerDt(String plerName , HttpSession session , Model model ) { 
		
		FormationDTO dto2 = new FormationDTO();
		
		
		PlayerDTO dto = formationRepository.forPlDetail(plerName);
		model.addAttribute("dtoP", dto );
	}
}
