package service.player;

import org.springframework.beans.factory.annotation.Autowired;

import repository.PlayerRepository;

public class PlayerDelService {
	@Autowired
	PlayerRepository playerRepository;
	public void DelAction(String plerNum) {
		System.out.println(plerNum);
		playerRepository.plDel(plerNum);
	}
}
