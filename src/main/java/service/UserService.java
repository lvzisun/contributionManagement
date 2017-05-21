package service;

import model.User;

public interface UserService {

	/**
	 * 注册
	 * @param user
	 * @return 返回自动生成的id
	 */
	int insertUser(User user);

	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return 返回登陆user
	 */
	User login(String username, String password);
}
