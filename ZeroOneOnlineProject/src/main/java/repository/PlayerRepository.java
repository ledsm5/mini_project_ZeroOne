package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.PlayerDTO;

public class PlayerRepository {
	@Autowired
	SqlSession sqlSession;
	
	String namespace = "mappers.playerMapper";
	String statement;
	
	public PlayerDTO plerDetail(String plerName) {
		statement = namespace + ".plerDetail";
		return sqlSession.selectOne(statement,plerName);
		
	}
	
	public void plDel(String plerNum) {
		statement = namespace + ".plDel";
		int i= sqlSession.delete(statement,plerNum);
		System.out.println(i+"개가 삭제되었습니다");
	}
	
	public List<PlayerDTO> listPrint() {
		statement = namespace + ".listPrint";
		return sqlSession.selectList(statement);
	}
	
	public void playerRegist(PlayerDTO dto) {
		statement = namespace + ".playerRegist";
		int i =sqlSession.insert(statement,dto);
		System.out.println(i + "개가 삽입되었습니다.");
	}
	
	public String playerNum() {
		statement = namespace + ".playerNum";
		return sqlSession.selectOne(statement);
	}
}
