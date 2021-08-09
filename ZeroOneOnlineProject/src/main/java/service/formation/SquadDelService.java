package service.formation;

import org.springframework.beans.factory.annotation.Autowired;

import command.FormationCommand;
import repository.FormationRepository;

public class SquadDelService {
	@Autowired
	FormationRepository formationRepository;
	public void delAction(FormationCommand formationCommand) {
		String plerName= formationCommand.getPlerName();
		formationRepository.squadDel(plerName);
	}
}
