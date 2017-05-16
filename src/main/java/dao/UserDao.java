package dao;

import org.apache.ibatis.annotations.Param;

import model.User;

public interface UserDao {
	/**
	 * 跟据传入的用户名和密码查询是否有该用户
	 * @param username
	 * @param password
	 * @return User
	 */
	User queryByUsernameAndPassword(@Param("username")String username,@Param("password")String password);
}
