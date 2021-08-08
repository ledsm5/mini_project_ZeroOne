package service.formation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfo;
import Model.SquadDTO;
import repository.FormationRepository;

public class SquadListService {
	@Autowired
	FormationRepository formationRepository;
	
	
	public void squadList(HttpSession session,Model model) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		List<SquadDTO> list = formationRepository.squadList(memId);
		model.addAttribute("list", list);
	}
}
