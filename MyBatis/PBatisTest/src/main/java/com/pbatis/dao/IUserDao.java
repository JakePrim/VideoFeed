package com.pbatis.dao;

import com.pbatis.pojo.User;
import org.dom4j.DocumentException;

import java.beans.PropertyVetoException;
import java.util.List;

/**
 * @program: PBatisTest
 * @Description:
 * @author: sufulu
 * @version: 1.0.0
 * @create: 2021-03-08 19:01
 * @PackageName: com.pbatis.dao
 * @ClassName: IUserDao.java
 **/
public interface IUserDao {
    //查询所有用户
    List<User> findAll();

    //根据条件进行用户查询
    User findById(User user);

    int save(User user);

    int update(User user);

    int delete(User user);
}
