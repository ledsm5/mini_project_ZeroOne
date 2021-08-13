package controller.player;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.PlayerCommand;
import service.player.PlayerDelService;
import service.player.PlayerDetailService;
import service.player.PlayerListService;
import service.player.PlayerModifyService;
import service.player.PlayerNumService;
import service.player.PlayerRegistService;
import validator.PlayerCommandValidator;

@Controller
@RequestMapping("pl")
public class PlayerController {
	@Autowired
	PlayerNumService playerNumService;
	@Autowired
	PlayerRegistService playerRegistService;
	@Autowired
	PlayerListService playerListService;
	@Autowired
	PlayerDetailService playerDetailService;
	@Autowired
	PlayerModifyService playerModifyService;
	@Autowired
	PlayerDelService playerDelService;
	
	
	
	@RequestMapping("plerDelAction")
	public String plerDelAction(@RequestParam(value="plerNum")String plerNum) {
		playerDelService.DelAction(plerNum);
		return "redirect:playerHome";
	}
	
	@RequestMapping("plerDel")
	public String plerDelCon(@ModelAttribute(value="plerNum")String plerNum) {
		return "player/plDelCon";
	}
	
	
	@RequestMapping("plModAction")
	public String plModAction(PlayerCommand playerCommand,HttpSession session) {
		playerModifyService.modAction(playerCommand,session);
		return "player/playerHome";
	}
	
	
	@RequestMapping("plerModDetail")
	public String plerModDetail(@RequestParam(value="plerName")String plerName,Model model) {
		playerDetailService.DetailPrint(plerName,model);
		return "player/plModifyForm";
	}
	
	@RequestMapping("plModify")
	public String plListPrint(Model model) {
		playerListService.ListPrint(model);
		return "player/plModList";
	}
	
	@RequestMapping("plRegistAction")
	public String plRegistAction(PlayerCommand playerCommand,Errors errors,HttpSession session) {
		new PlayerCommandValidator().validate(playerCommand,errors);
			if(errors.hasErrors()) {
				return "player/plRegistForm";
			}
		playerRegistService.registService(playerCommand,session);
		return "redirect:/";
	}
	
	@RequestMapping("plRegist")
	public String plRegist(Model model) {
		playerNumService.playerNum(model);
		return "player/plRegistForm";
	}
	
	@RequestMapping("playerHome")
	public String playerHome() {
		return "player/playerHome";
	}
}
