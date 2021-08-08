package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Model.AuthInfo;
import command.MemberCommand;
import service.main.LoginService;
import service.member.MemberJoinService;
import validator.MemberCommandValidator;

@Controller
@RequestMapping("memJoin")
public class MemberJoinController {
	@Autowired
	MemberJoinService memberJoinService;
	@Autowired
	LoginService loginService;
	
	
	@RequestMapping("memJoinAction")
	public String memJoinAction(MemberCommand memberCommand, Errors errors) {
		new MemberCommandValidator().validate(memberCommand, errors);
		if(errors.hasErrors()) {
			return "member/memJoinForm";
		}
		AuthInfo authInfo = loginService.loginVal(memberCommand.getMemId(),memberCommand.getMemPw());
		if(authInfo != null) {
			errors.rejectValue("memId", "duplicate");
			return "member/memJoinForm";
		}
		memberJoinService.memJoin(memberCommand);
		return "redirect:/";
	}
	
	@RequestMapping(value="agreeVal",method = RequestMethod.POST)
	public String agreeVal(@RequestParam(value="agree",defaultValue ="false")Boolean agree,@ModelAttribute(value="memberCommand")MemberCommand memberCommand, Model model) {
		if(!agree) {
			model.addAttribute("errAgree","동의약관에 체크해 주세요!");
			return "member/agree";
		}
		return "member/memJoinForm";
	}
	
	
	@RequestMapping("agree")
	public String agreePage() {
		return "member/agree";
	}
}
