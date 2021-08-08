package controller.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.EmployeeCommand;
import service.employee.EmployeeDetailService;
import service.employee.EmployeeListAction;
import service.employee.EmployeeModifyService;
import service.employee.EmployeeNumService;
import service.employee.EmployeeRegistService;
import validator.EmployeeCommandValidator;

@Controller
@RequestMapping("/emp")
public class EmployeeController {
	@Autowired
	EmployeeListAction employeeListAction;
	@Autowired
	EmployeeNumService employeeNumService;
	@Autowired
	EmployeeRegistService employeeRegistService;
	@Autowired
	EmployeeDetailService employeeDetailService;
	@Autowired
	EmployeeModifyService employeeModifyService;
	
	
	@RequestMapping(value="empModifyAction", method = RequestMethod.POST)
	public String empModifyAction(EmployeeCommand employeeCommand) {
		employeeModifyService.empMod(employeeCommand);
		return "redirect:/";
	}
	@RequestMapping("empModify")
	public String empModify(@RequestParam(value="employeeNum")String employeeNum , Model model) {
		employeeDetailService.empDetail(employeeNum,model);
		return "employee/empModifyForm";
	}
	@RequestMapping("empDetail")
	public String empDetail(@RequestParam(value="employeeNum")String employeeNum , Model model) {
		employeeDetailService.empDetail(employeeNum,model);
		return "employee/empDetail";
	}
	
	@RequestMapping(value="empRegistAction", method = RequestMethod.POST)
	public String empRegistAction(EmployeeCommand employeeCommand ,Errors errors) {
		new EmployeeCommandValidator().validate(employeeCommand,errors);
		if(errors.hasErrors()) {
			return "employee/empRegistForm";
		}
		employeeRegistService.empRegist(employeeCommand);	
		return "redirect:/";
	}
	
	@RequestMapping("empRegistForm")
	public String empRegistForm(Model model , EmployeeCommand employeeCommand) {
		employeeNumService.empNo(model, employeeCommand);
		return "employee/empRegistForm";
	}
	
	@RequestMapping("empList")
	public String empListPrint(Model model) {
		employeeListAction.empList(model);
		return "employee/empList";
	}
}
