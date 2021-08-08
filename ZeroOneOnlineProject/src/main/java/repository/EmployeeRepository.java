package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.EmployeeDTO;

public class EmployeeRepository {
	@Autowired
	SqlSession sqlSession;
	
	String namespace = "mappers.employeeMapper";
	String statement;
	
	public void empMod(EmployeeDTO dto) {
		statement = namespace + ".empMod";
		int i = sqlSession.update(statement,dto);
		System.out.println(i + "개 직원이 수정되었습니다.");
	}
	
	public EmployeeDTO empDetail(String employeeNum) {
		statement = namespace + ".empDetail";
		return sqlSession.selectOne(statement,employeeNum);
	}
	public void empRegist(EmployeeDTO dto) {
		statement = namespace + ".empRegist";
		int i = sqlSession.insert(statement,dto);
		System.out.println(i + "개 직원이 등록되었습니다 ");
	}
	
	public List<EmployeeDTO> empList(){
		statement = namespace +".empList";
		return sqlSession.selectList(statement); //selectList ==> list 앙ㄹ아서 만들어놈
	}
	public String empNo() {
		statement = namespace + ".empNo";
		return sqlSession.selectOne(statement);
	}
	
}
