package service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MemberDTO;
import repository.MemberRepository;

public class MemDetailService {
	@Autowired 
	MemberRepository memberRepository;
	
	public void memDetail(String memId,Model model) {
		MemberDTO dto = memberRepository.memDetail(memId);
		model.addAttribute("mem",dto);
	}
}
