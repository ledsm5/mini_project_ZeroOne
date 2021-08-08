package service.formation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfo;
import Model.SquadDTO;
import repository.FormationRepository;

public class AddPlayerSquad {
	@Autowired
	FormationRepository formationRepository;
	
	public void addPlSquad(String plerName,String plerSalary,String plerPrice,String plerPosition, String plerAbility,HttpSession session) {
		SquadDTO dto = new SquadDTO();
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		
		dto.setMemId(memId);
		dto.setPlerName(plerName);
		dto.setPlerSalary(plerSalary);
		dto.setPlerPrice(plerPrice);
		dto.setPlerPosition(plerPosition);
		dto.setPlerAbility(plerAbility);
		
		

		formationRepository.addPlSquad(dto);
	}
	
}
