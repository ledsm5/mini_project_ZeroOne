package service.formation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfo;
import Model.FormationDTO;
import command.FormationCommand;
import repository.FormationRepository;

public class FormationRegistService {
	@Autowired
	FormationRepository formationRepository;
	
	
	public void formationRegist(FormationCommand formationCommand, HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo"); 
		String memId = authInfo.getUserId();
		FormationDTO dto = new FormationDTO();
		dto.setMemId(memId);
		dto.setPlerName(formationCommand.getPlerName());
		dto.setPositionNum(formationCommand.getPositionNum());

		formationRepository.forRegist(dto);
	}
	
}
