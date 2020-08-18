package com.qf.dao;

import com.qf.pojo.User;

import java.util.List;

public interface UserDao {

    public List<User> selectAllUser();

    public User selectUserByUid(int uid);

    public int delete(int uid);

    public int update(User user);

    public int insert(User user);
}
