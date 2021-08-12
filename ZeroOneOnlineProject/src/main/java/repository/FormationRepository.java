package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.FormationDTO;
import Model.FormationPlayerDTO;
import Model.PlayerDTO;
import Model.SquadDTO;

public class FormationRepository {
	@Autowired
	SqlSession sqlSession;

	String namespace = "mappers.formationMapper";
	String statement;

	
	
	public PlayerDTO forPlDetail(String plerName) {
		statement = namespace + ".forPlDetail";
		return sqlSession.selectOne(statement,plerName);
	}
	
	public FormationDTO forDetail(FormationDTO dto) {
		statement = namespace + ".forDetail";
		return sqlSession.selectOne(statement, dto);
	}
	
	
	public void forDel(FormationDTO dto) {
		statement = namespace + ".forDel";
		int i = sqlSession.delete(statement, dto);
		System.out.println(i + "개가 삭제되었습니다 ");
	}
	
	public List<FormationDTO> forList(String memId) {
		statement = namespace + ".forList";
		return sqlSession.selectList(statement, memId);
	}
	
	public void forRegist(FormationDTO dto) { 
		 statement = namespace + ".forRegist"; 
		 int i=sqlSession.insert(statement,dto); 
		 System.out.println(i +"개가 등록되었습니다."); 
	 }

	public SquadDTO squadDetail(String plerName) {
		statement = namespace + ".squadDetail";
		return sqlSession.selectOne(statement, plerName);
	}

	public void squadDel(String plerName) {
		statement = namespace + ".squadDel";
		int i = sqlSession.delete(statement, plerName);
		System.out.println(i + "개가 삭제되었습니다");
	}

	public List<SquadDTO> squadList(String memId) {
		statement = namespace + ".squadList";
		return sqlSession.selectList(statement, memId);
	}

	public void addPlSquad(SquadDTO dto) {
		statement = namespace + ".addPlSquad";
		int i = sqlSession.insert(statement, dto);
		System.out.println(i + "개가 등록되었습니다");
	}

	public PlayerDTO searchDetail(String plerName) {
		statement = namespace + ".searchDetail";
		return sqlSession.selectOne(statement, plerName);
	}

}
