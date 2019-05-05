package org.aron.ssm.domain.dao.impl;

import org.aron.ssm.domain.dao.UserDao;
import org.aron.ssm.domain.pojo.User;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.List;

/**
 * @author Y-Aron
 * @create 2019/4/29
 */
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

    public List<User> selectAll() {
        return this.getSqlSession().selectList("org.aron.ssm.domain.dao.UserDao.selectAll");
    }

    @Override
    public int insert(User user) {
        return 0;
    }
}