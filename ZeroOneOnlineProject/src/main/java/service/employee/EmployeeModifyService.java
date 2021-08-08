package service.employee;

import org.springframework.beans.factory.annotation.Autowired;

import Model.EmployeeDTO;
import command.EmployeeCommand;
import repository.EmployeeRepository;

public class EmployeeModifyService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empMod(EmployeeCommand employeeCommand) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmail(employeeCommand.getEmail());
		dto.setEmpAddress(employeeCommand.getEmpAddress());
		dto.setEmpName(employeeCommand.getEmpName());
		dto.setEmpPh(employeeCommand.getEmpPh());
		dto.setEmployeeNum(employeeCommand.getEmployeeNum());
		employeeRepository.empMod(dto);
	}
}
