package service;

import model.User;

public interface UserService {

	/**
	 * @param user
	 * @return 返回自动生成的id
	 */
	int insertUser(User user);
}
