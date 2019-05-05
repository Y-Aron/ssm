package org.aron.ssm.domain.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.Past;
import java.util.Date;

@Getter @Setter
@ToString
public class User {
    private long id;
    private String name;
    private String nickname;
    private String desc;
    @Past(message = "生日错误111！！")
    private Date birthday;
}