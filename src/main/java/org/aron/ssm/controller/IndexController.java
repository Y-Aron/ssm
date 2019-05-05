package org.aron.ssm.controller;

import org.aron.ssm.domain.pojo.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Y-Aron
 * @create 2019/5/4
 */
@RestController
@RequestMapping("rest")
public class IndexController {

    private User initUser() {
        return new User(){{
           setId((long) (Math.random() * 10000));
           setName("name-" + Math.random());
           setNickname("nickname-" + Math.random());
        }};
    }

    @RequestMapping("/users")
    public List<User> getUser() {
        System.out.println("========");
        List<User> list = new ArrayList<>();
        list.add(initUser());
        return list;
    }
}
