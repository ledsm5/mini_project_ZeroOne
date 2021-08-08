package validator;


import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import command.PlayerCommand;

public class PlayerCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
	public void validate(Object target , Errors errors) {
		PlayerCommand playerCommand =(PlayerCommand)target;
		
		String pattern = "^[0-9]*$"; //숫자만
        String val = playerCommand.getPlerPrice(); //대상문자열
    
        boolean regex = Pattern.matches(pattern, val);
        System.out.println(regex);
		if(!regex) {
			errors.rejectValue("plerPrice" ,"notNum");
		}
	}
	
	
	
}
