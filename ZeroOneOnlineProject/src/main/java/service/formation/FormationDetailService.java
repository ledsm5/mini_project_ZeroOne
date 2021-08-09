package service.formation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfo;
import Model.FormationDTO;
import repository.FormationRepository;

public class FormationDetailService {
	@Autowired
	FormationRepository formationRepository;
	public FormationDTO forDetail(String plerPosition ,HttpSession session ,Model model) {
		
		FormationDTO dto = new FormationDTO();
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo"); 
		String memId = authInfo.getUserId();
		dto.setMemId(memId);
		dto.setPlerPosition(plerPosition);
		FormationDTO dto2 = formationRepository.forDetail(dto);
		model.addAttribute("forD" , dto2);
		return dto;
	}
}
