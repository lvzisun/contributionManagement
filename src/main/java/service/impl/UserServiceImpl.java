package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.UserDao;
import model.User;
import service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Transactional
	public int insertUser(User user){
		userDao.insertUser(user);
		return user.getId();
	}

	@Override
	public User login(String username, String password) {
		User user=userDao.queryByUsernameAndPassword(username, password);
		return user;
	}
}
