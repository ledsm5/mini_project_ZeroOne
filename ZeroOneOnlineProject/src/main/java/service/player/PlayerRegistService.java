package service.player;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import Model.PlayerDTO;
import command.PlayerCommand;
import repository.PlayerRepository;

public class PlayerRegistService {
	@Autowired
	PlayerRepository playerRepository;
	
	public void registService(PlayerCommand playerCommand,HttpSession session) {
		PlayerDTO dto = new PlayerDTO();
		dto.setPlerAbility(playerCommand.getPlerAbility());
		dto.setPlerAge(playerCommand.getPlerAge());
		dto.setPlerDetail(playerCommand.getPlerDetail());
		dto.setPlerFoot(playerCommand.getPlerFoot());
		dto.setPlerLeague(playerCommand.getPlerLeague());
		dto.setPlerName(playerCommand.getPlerName());
		dto.setPlerNum(playerCommand.getPlerNum());
		dto.setPlerPosition(playerCommand.getPlerPosition());
		dto.setPlerPrice(playerCommand.getPlerPrice());
		dto.setPlerRate(playerCommand.getPlerRate());
		dto.setPlerSalary(playerCommand.getPlerSalary());
		dto.setPlerTeam(playerCommand.getPlerTeam());
		dto.setPlerHeight(playerCommand.getPlerHeight());
		dto.setPlerIndiSkill(playerCommand.getPlerIndiSkill());
		dto.setPlerSession(playerCommand.getPlerSession());
		
		String plerImage ="";
		if(!playerCommand.getPlerImage()[0].getOriginalFilename().contentEquals("")) {
			for(MultipartFile mf : playerCommand.getPlerImage()) {
				String original = mf.getOriginalFilename(); //확장자 
				System.out.println(original);
				String originalExt = original.substring(original.lastIndexOf("."));//original에서 확장자만 추출
				String store = UUID.randomUUID().toString().replace("-", "") + originalExt; //랜덤 파일명 생성
				plerImage += store + ","; //디비에 저장할 파일명 생성완료
				
				// 파일을 폴더 경로에 저장 
				String realpath = session.getServletContext().getRealPath("WEB-INF/view/player/upload"); //파일저장위치
				File file = new File(realpath + "/" + store); //위치에 생성한 파일 저장
				 
				try {
					mf.transferTo(file);
				} catch (IOException e) {

					e.printStackTrace();
				}
				
			}
			
			dto.setPlerImage(plerImage);
		}
		
		playerRepository.playerRegist(dto);
		
	}
}
