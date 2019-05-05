package org.aron.ssm.service.impl;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.aron.ssm.domain.dao.UserDao;
import org.aron.ssm.domain.pojo.User;
import org.aron.ssm.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Slf4j
public class UserServiceImpl implements UserService {

//    private final UserDao userDao;
//
//    public UserServiceImpl(UserDao userDao) {
//        this.userDao = userDao;
//    }

    @Setter
    private UserDao userDao;

    @Override
    public List<User> selectAll() {
        log.info("{}", userDao);
        log.info("UserServiceImpl select all");
        return userDao.selectAll();
    }

    private User initUser() {
        return new User(){{
            setName("name-" + Math.random());
            setDesc("desc-" + Math.random());
            setNickname("nickname-" + Math.random());
        }};
    }

    /**
     * 使用注解开启实务管理
     * 当方法体中出现异常时，方法中的所有curd进行回滚操作，反之进行数据库提交
     * 如下：1/0 出现异常，则第一次插入的数据进行回滚。
     */
    @Override
    @Transactional
    public int insert() {
        int row = userDao.insert(initUser());
        log.info("第一次插入：{}", row);
        int c = 1/0;
        row = row + userDao.insert(initUser());
        log.info("第二次插入：{}", row);
        return row;
    }
}