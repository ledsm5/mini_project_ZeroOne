package service.formation;

import org.springframework.beans.factory.annotation.Autowired;

import repository.FormationRepository;

public class SquadDelService {
	@Autowired
	FormationRepository formationRepository;
	public void delAction(String plerName) {
		formationRepository.squadDel(plerName);
	}
}
