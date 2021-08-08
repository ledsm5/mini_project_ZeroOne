package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class FormationPlayerRepository {
		@Autowired
		SqlSession sqlSession;
		
		String namespace = "mappers.formationPlayerMapper";
		String statement;
		
}
