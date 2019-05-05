package org.aron.ssm.service;

import org.aron.ssm.domain.pojo.User;

import java.util.List;

public interface UserService {

    List<User> selectAll();

    int insert();
}