package com.qf.service;

import com.qf.pojo.User;

import java.util.List;

public interface UserService {

    public List<User> selectAllUser();

    public User selectUserByUid(int uid);

    public int delete(int uid);

    public int update(User user);

    public int insert(User user);
}
