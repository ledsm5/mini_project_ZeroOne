package service.player;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.PlayerDTO;
import repository.PlayerRepository;

public class PlayerListService {
	@Autowired
	PlayerRepository playerRepository;
	public void ListPrint(Model model) {
		List<PlayerDTO> list = playerRepository.listPrint();
		model.addAttribute("list",list);
	}
}
