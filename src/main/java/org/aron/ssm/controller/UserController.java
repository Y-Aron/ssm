package org.aron.ssm.controller;

import lombok.extern.slf4j.Slf4j;
import org.aron.ssm.domain.pojo.User;
import org.aron.ssm.domain.vo.VoUser;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author Y-Aron
 * @create 2019/4/29
 */
@Slf4j
@Controller
public class UserController {

    /**
     * 1. @InitBinder修饰方法不能有返回值，它必须声明为void
     * 2. @InitBinder修饰方法的参数通常是WebDataBinder
     * 3. @InitBinder所修饰的方法只有请求到具体的方法有参数时才触发,即方法参数有几个就执行几次
     */
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        log.info("init binder");
        // 设置某属性不绑定（仅对对象中的属性生效）
         binder.setDisallowedFields("nickname");
        // 注册数据类型转换：将String -> Date
         binder.registerCustomEditor(Date.class,
                 new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));
    }

    @RequestMapping({"/", ""})
    public String index() {
        return "index";
    }

    /**
     * 测试基本类型的请求参数
     */
    @PostMapping("test/baseParams")
    public String testBaseTypeParams(String name, Integer age, String[] role) {
//        log.info("nickname: {}", nickname);
        log.info("name: {}", name);
        log.info("age: {}", age);
        log.info("role: {}", (Object) role);
        return "index";
    }

    /**
     * bean对象组合参数
     */
    @PostMapping("test/beanParams")
    public String testBean( @Valid User user) {
        log.info("user: {}", user);
        return "index";
    }

    @PostMapping("test/converter")
    public String testConverter(User user) {
        log.info("user: {}", user);
        return "index";
    }

//    @PostMapping("test/beanParams")
//    public String testBean1(String nickname, String name) {
//        log.info("name: {}", name);
//        log.info("nickname: {}", nickname);
//        return "index";
//    }

    /**
     * 数组和集合都可以采用ModelBeanList方式来接收
     */
    @PostMapping("test/beanList")
    public String testBean(VoUser voUser) {
        for (User user : voUser.getUsers()) {
            log.info("vo user: {}", user);
        }
        return "index";
    }
}
