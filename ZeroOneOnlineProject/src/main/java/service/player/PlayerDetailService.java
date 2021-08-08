package service.player;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.PlayerDTO;
import repository.PlayerRepository;

public class PlayerDetailService {
	@Autowired
	PlayerRepository playerRepository;
	
	public void DetailPrint(String plerNum,Model model) {
		 PlayerDTO dto =playerRepository.plerDetail(plerNum);
		 model.addAttribute("dto", dto);
		 
	}
}
