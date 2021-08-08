package service.formation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfo;
import Model.FormationDTO;
import repository.FormationRepository;

public class FormationDelService {
	@Autowired
	FormationRepository formationRepository;
	
	public void forDel(String positionNum,HttpSession session) {
		System.out.println(positionNum);
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId= authInfo.getUserId();
		FormationDTO dto = new FormationDTO();
		
		
		dto.setMemId(memId);
		dto.setPositionNum(positionNum);
		formationRepository.forDel(dto);
	}
}
