package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.EmployeeCommand;

public class EmployeeCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}
	
	public void validate(Object target, Errors errors) {
		EmployeeCommand employeeCommand = (EmployeeCommand)target;
		
		if(!employeeCommand.isEmpPwEqualsEmpPwCon()) {
			errors.rejectValue("empPwCon", "nomatch");
		}
		ValidationUtils.rejectIfEmpty(errors, "empId", "required");
		ValidationUtils.rejectIfEmpty(errors, "empPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "empPwCon", "required");
		ValidationUtils.rejectIfEmpty(errors, "empName", "required");
		ValidationUtils.rejectIfEmpty(errors, "empPh", "required");
		ValidationUtils.rejectIfEmpty(errors, "email", "required");
		ValidationUtils.rejectIfEmpty(errors, "empAddress", "required");
		
	}
}
