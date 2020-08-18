package com.qf.validate;

import com.qf.pojo.User;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class UserValidate implements Validator {
    @Override
    public boolean supports(Class<?> clazz) {
        return User.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;

        ValidationUtils.rejectIfEmpty(errors, "username", "user.username");
        ValidationUtils.rejectIfEmpty(errors, "password", "user.password");
        ValidationUtils.rejectIfEmpty(errors, "sex", "user.sex");
        ValidationUtils.rejectIfEmpty(errors, "tel", "user.tel");
    }
}
