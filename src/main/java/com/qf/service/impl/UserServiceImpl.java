package com.qf.service.impl;

import com.qf.dao.UserDao;
import com.qf.pojo.User;
import com.qf.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public List<User> selectAllUser() {
        return userDao.selectAllUser();
    }

    @Override
    public User selectUserByUid(int uid) {
        return userDao.selectUserByUid(uid);
    }

    @Override
    public int delete(int uid) {
        return userDao.delete(uid);
    }

    @Override
    public int update(User user) {
        return userDao.update(user);
    }

    @Override
    public int insert(User user) {
        return userDao.insert(user);
    }
}
