package org.aron.ssm.domain.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.aron.ssm.domain.pojo.User;

/**
 * @author Y-Aron
 * @create 2019/5/2
 */
@Setter @Getter @ToString
public class VoUser {
    private User[] users;
}
