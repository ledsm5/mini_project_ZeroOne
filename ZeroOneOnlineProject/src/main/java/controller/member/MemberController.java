package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.MemberCommand;
import service.member.MemDetailService;
import service.member.MemListService;
import service.member.MemberDelService;
import service.member.MemberModService;

@Controller
@RequestMapping("mem")
public class MemberController {
	@Autowired
	MemListService memListService;
	@Autowired
	MemDetailService memDetailService;
	@Autowired
	MemberModService memberModService;
	@Autowired
	MemberDelService memberDelService;
	
	
	@RequestMapping("memDelAction")
	public String memDelAction(@RequestParam(value="memId")String memId) { //session으로 하면 안된다 ==> 직원으로 들어가서 수정하기때문에 마이페이지가 아닐땐
		memberDelService.memDel(memId);	//쿼리스트링 받아와서 하자
		return "redirect:memList";
	}
	
	@RequestMapping("memDropConfirm")
	public String memDelConfirm() {
		return "member/memDropConfirm";
	}
	@RequestMapping("memModAction")
	public String memModAction(MemberCommand memberCommand) {
		memberModService.memMod(memberCommand);
		return "redirect:memList";
	}
	
	@RequestMapping("memModPrint")
	public String memModPrint(@RequestParam(value="memId")String memId , Model model) {
		memListService.memList(model,memId);
		return "member/memModPage";
	}
	
	@RequestMapping("memDetail")
	public String memDetail(@RequestParam(value="memId")String memId,Model model) {
		memListService.memList(model,memId);
		return "member/memDetailPage";
	}
	
	@RequestMapping("memList")
	public String memList(Model model) {
		memListService.memList(model,null);
		return "member/memListPage";
	}
}
