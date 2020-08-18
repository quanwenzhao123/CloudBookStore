package com.qf.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

    private int uid;
    private String username;
    private String password;
    private String sex;
    private String tel;

    public User(String username, String password, String sex, String tel) {
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.tel = tel;
    }
}
