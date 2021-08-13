package service.formation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.PlayerDTO;
import Model.SquadDTO;
import repository.FormationRepository;

public class FmPlayerDetailService {
	@Autowired
	FormationRepository formationRepository;
	public void searchDetail(String plerName,Model model) {
		PlayerDTO dto = formationRepository.searchDetail(plerName);
		model.addAttribute("dto",dto);
		
	}
	
	
	
}
