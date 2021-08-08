package service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import Model.EmployeeDTO;
import command.EmployeeCommand;
import repository.EmployeeRepository;

public class EmployeeRegistService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	public void empRegist(EmployeeCommand employeeCommand) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmail(employeeCommand.getEmail());
		dto.setEmpAddress(employeeCommand.getEmpAddress());
		dto.setEmpId(employeeCommand.getEmpId());
		dto.setEmployeeNum(employeeCommand.getEmployeeNum());
		dto.setEmpName(employeeCommand.getEmpName());
		dto.setEmpPh(employeeCommand.getEmpPh());
		dto.setEmpPw(bcryptPasswordEncoder.encode(employeeCommand.getEmpPw()));
		employeeRepository.empRegist(dto);
	}
}
