package controller.formation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Model.SquadDTO;
import command.FormationCommand;
import service.formation.AddPlayerSquad;
import service.formation.FmPlayerDetailService;

import service.formation.FormationListService;
import service.formation.FormationRegistService;
import service.formation.SquadDelService;
import service.formation.SquadDetailService;
import service.formation.SquadListService;


@Controller
@RequestMapping("fm")
public class FormationController {
	@Autowired
	FmPlayerDetailService fmPlayerDetailService;
	@Autowired
	AddPlayerSquad addPlayerSquad;
	@Autowired
	SquadListService squadListService;
	@Autowired
	SquadDelService squadDelService;
	@Autowired
	SquadDetailService squadDetailService;
	@Autowired
	FormationRegistService formationRegistService;
	@Autowired
	FormationListService formationListService;
	
	
	
	
	
	
	
	//ajax 로 포메이션 여러개 불러오기 
	@RequestMapping("formationRegist")//드래그 해서 놓으면 해당 자리의 update 문으로  TEAM_Location_num을 지정해준다 
	public String formationRegist(FormationCommand formationCommand, HttpSession session, Model model) {		
		squadListService.squadList(session,model);
		formationRegistService.formationRegist(formationCommand,session);
		return "redirect:formation";
	}
	
	
	
	@RequestMapping("playerDetail")
	public String playerDetail(@RequestParam(value="plerName")String plerName) {
		squadDetailService.sqdDetail(plerName);
		return "formation/playerDetail";
	}
	
	
	
	
	@RequestMapping("squadDel")
	public String squadDel(@RequestParam(value="plerName")String plerName) {
		squadDelService.delAction(plerName);
		return "redirect:formation";
	}
	
	@RequestMapping("addPlayer")
	public String addPlayer(@RequestParam(value="plerName")String plerName, 
							@RequestParam(value="plerSalary")String plerSalary,
							@RequestParam(value="plerPrice")String plerPrice,
							@RequestParam(value="plerPosition")String plerPosition,
							@RequestParam(value="plerAbility")String plerAbility,
							HttpSession session,Model model) {
		
		if (plerName == null || plerName == "") {
			model.addAttribute("err2","검색값을 입력해주세요");
			squadListService.squadList(session,model);
			formationListService.forList(session,model);
			return "formation/formationHome";
		}//순서 바뀌면 에러
		
		SquadDTO dto1 = squadDetailService.sqdDetail(plerName);
		if (dto1 == null) {
			addPlayerSquad.addPlSquad(plerName,plerSalary,plerPrice,plerPosition,plerAbility,session);
			formationListService.forList(session,model);
			return "redirect:formation";
		}else {
			model.addAttribute("err", "중복값입니다");
			squadListService.squadList(session,model);
			formationListService.forList(session,model);
			return "formation/formationHome";
		}
		
		
		
		
	}
	
	@RequestMapping("searchedPl")
	public String searchedPl(@RequestParam(value="plerName")String plerName,Model model,HttpSession session) {
		fmPlayerDetailService.searchDetail(plerName,model);
		squadListService.squadList(session,model);
		formationListService.forList(session,model);
		return "formation/formationHome";
	}
	@RequestMapping("formation")
	public String formation(FormationCommand formationCommand , HttpSession session,Model model) {
		squadListService.squadList(session,model); 
		formationListService.forList(session,model);
		
		return "formation/formationHome";
	}
	
}
