package test;

import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;

import dao.UserDao;
import model.User;
import util.MybatisUtil;

public class UserMapperTest {

	@Test
	public void test() {
		SqlSession session = MybatisUtil.getSession();
		UserDao userDao = session.getMapper(UserDao.class);
		User user=userDao.queryByUsernameAndPassword("admin", "222222");
		session.commit();
		session.close();
		
		Assert.assertTrue(user!=null);
	}

	@Test
	public void queryByIdTest() {
		SqlSession session = MybatisUtil.getSession();
		UserDao userDao = session.getMapper(UserDao.class);
		User user=userDao.queryById(1);
		session.commit();
		session.close();
		
		Assert.assertTrue(user!=null);
		Assert.assertTrue(user.getUsername().equals("admin"));
	}
}
