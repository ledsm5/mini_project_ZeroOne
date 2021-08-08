package service.member;

import org.springframework.beans.factory.annotation.Autowired;

import Model.MemberDTO;
import command.MemberCommand;
import repository.MemberRepository;

public class MemberModService {
	@Autowired
	MemberRepository memberRepository;
	public void memMod(MemberCommand memberCommand) {
		MemberDTO dto = new MemberDTO();
		dto.setDetailAdd(memberCommand.getDetailAdd());
		dto.setMemAddress(memberCommand.getMemAddress());
		dto.setMemEmail(memberCommand.getMemEmail());
		dto.setMemEmailCk(memberCommand.getMemEmailCk());
		dto.setMemPhone(memberCommand.getMemPhone());
		dto.setPostNumber(memberCommand.getPostNumber());
		dto.setMemId(memberCommand.getMemId());
		
		memberRepository.memMod(dto);
	}
}
