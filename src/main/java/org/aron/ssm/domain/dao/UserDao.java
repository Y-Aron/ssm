package org.aron.ssm.domain.dao;

import org.aron.ssm.domain.pojo.User;

import java.util.List;

public interface UserDao {

    List<User> selectAll();

    int insert(User user);
}