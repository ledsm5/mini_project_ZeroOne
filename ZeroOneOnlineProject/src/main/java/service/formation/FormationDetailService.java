package service.formation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;


import Model.AuthInfo;
import Model.FormationDTO;
import repository.FormationRepository;

public class FormationDetailService {
	@Autowired
	FormationRepository formationRepository;
	public FormationDTO forDetail(HttpSession session,String plerName) {
		
		FormationDTO dto = new FormationDTO();
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo"); 
		String memId = authInfo.getUserId();
		dto.setMemId(memId);
		dto.setPlerName(plerName);
		
		
		FormationDTO dto2 = formationRepository.forDetail(dto);
		
		
		return dto2;
	}
}
