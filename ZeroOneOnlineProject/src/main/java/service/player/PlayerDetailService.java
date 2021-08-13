package service.player;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.PlayerDTO;
import command.FormationCommand;
import repository.PlayerRepository;

public class PlayerDetailService {
	@Autowired
	PlayerRepository playerRepository;
	
	public void DetailPrint(String plerName,Model model) {
		 PlayerDTO dto =playerRepository.plerDetail(plerName);
		 model.addAttribute("dtoView", dto);
		 
	}
}
