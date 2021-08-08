package service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.EmployeeDTO;
import repository.EmployeeRepository;

public class EmployeeDetailService {
	@Autowired
	EmployeeRepository employeeRepository;
	
	public void empDetail(String employeeNum ,Model model) {
		EmployeeDTO dto = employeeRepository.empDetail(employeeNum);
		model.addAttribute("emp",dto);
	}
}
