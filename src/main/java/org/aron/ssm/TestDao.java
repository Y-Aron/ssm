package org.aron.ssm;

import lombok.extern.slf4j.Slf4j;
import org.aron.ssm.domain.dao.UserDao;
import org.aron.ssm.domain.dao.impl.UserDaoImpl;
import org.aron.ssm.domain.pojo.User;
import org.aron.ssm.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

@Slf4j
public class TestDao {

    private ApplicationContext applicationContext;

    @Before
    public void init() {
        this.applicationContext = new ClassPathXmlApplicationContext("spring/spring-mybatis-dao.xml");
    }

    @Test
    public void test() {
        UserDao userDao = applicationContext.getBean(UserDaoImpl.class);
        List<User> users = userDao.selectAll();
        users.forEach(vol -> log.info("{}", vol));
    }

    @Test
    public void testTx() {
        UserService userService = applicationContext.getBean(UserService.class);
        int row = userService.insert();
        System.out.println(row);
    }
}