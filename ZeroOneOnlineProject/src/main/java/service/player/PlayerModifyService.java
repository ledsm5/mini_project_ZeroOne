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

public class PlayerModifyService {
	@Autowired
	PlayerRepository playerRepository;
	
	public void modAction(PlayerCommand playerCommand,HttpSession session) {
		PlayerDTO dto = new PlayerDTO();
		dto.setPlerAbility(playerCommand.getPlerAbility());
		dto.setPlerAge(playerCommand.getPlerAge());
		dto.setPlerDetail(playerCommand.getPlerDetail());
		dto.setPlerFoot(playerCommand.getPlerFoot());
		dto.setPlerHeight(playerCommand.getPlerHeight());
		dto.setPlerIndiSkill(playerCommand.getPlerIndiSkill());
		dto.setPlerLeague(playerCommand.getPlerLeague());
		dto.setPlerName(playerCommand.getPlerName());
		dto.setPlerPosition(playerCommand.getPlerPosition());
		dto.setPlerPrice(playerCommand.getPlerPrice());
		dto.setPlerRate(playerCommand.getPlerRate());
		dto.setPlerSalary(playerCommand.getPlerSalary());
		dto.setPlerTeam(playerCommand.getPlerTeam());
		
		String [] fileNames = playerCommand.getFileDel().split(","); //임시삭제
		PlayerDTO dto1 = playerRepository.plerDetail(playerCommand.getPlerNum().toString());
		dto.setPlerImage(dto1.getPlerImage());
		String realpath = session.getServletContext().getRealPath("WEB-INF/view/player/upload");
		String storeFile= "";
		
		//파일추가
		
		if(!playerCommand.getPlerImage()[0].getOriginalFilename().equals("")) {
			for(MultipartFile mf : playerCommand.getPlerImage()) {
				String original = mf.getOriginalFilename();
				String fileNameExt = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + fileNameExt;
				File file = new File(realpath + "/" + store);
				try {mf.transferTo(file);} catch (Exception e) {e.printStackTrace();
				storeFile =storeFile + store + ",";
				}
			}
		// =====================   기존파일 삭제(임시저장및 삭제위한)
		String playerFileName =dto1.getPlerImage();
		if(!fileNames[0].equals("")) {
			for(String s : fileNames) {
				String delfile = s + ",";
				
			}
		}
		
			
		}
		
	}
}
