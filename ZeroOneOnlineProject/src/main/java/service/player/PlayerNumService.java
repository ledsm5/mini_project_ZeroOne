package service.player;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;


import repository.PlayerRepository;

public class PlayerNumService {
	@Autowired
	PlayerRepository playerRepository;
	
	
	public void playerNum(Model model) {
		String plerNum = playerRepository.playerNum();
		model.addAttribute("plerNum",plerNum);
	}
}
