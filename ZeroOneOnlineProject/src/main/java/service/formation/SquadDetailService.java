package service.formation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.SquadDTO;
import repository.FormationRepository;

public class SquadDetailService {
	@Autowired
	FormationRepository formationRepository;
	public SquadDTO sqdDetail(String plerName) {
		SquadDTO dto1 = formationRepository.squadDetail(plerName);
		return dto1;
	}
}
