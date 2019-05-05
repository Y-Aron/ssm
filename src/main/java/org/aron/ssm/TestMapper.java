package org.aron.ssm;

import lombok.extern.slf4j.Slf4j;
import org.aron.ssm.domain.pojo.User;
import org.aron.ssm.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

@Slf4j
public class TestMapper {

    private ApplicationContext applicationContext;

    @Before
    public void init() {
        this.applicationContext = new ClassPathXmlApplicationContext("spring/spring-mybatis-mapper.xml");
    }

    @Test
    public void test() {
        UserService userService = applicationContext.getBean(UserService.class);
        List<User> users = userService.selectAll();
        users.forEach(vol -> log.info("{}", vol));
    }

    @Test
    public void testTx() {
        UserService userService = applicationContext.getBean(UserService.class);
        int row = userService.insert();
        System.out.println(row);
    }
}