package test;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import dao.UserDao;
import model.User;
import util.MybatisUtil;

public class UserDaoTest {

	@Test
	public void test(){
		SqlSession session=MybatisUtil.getSession();
		UserDao userDao=session.getMapper(UserDao.class);
		User user=userDao.queryByUsernameAndPassword("admin", "222222");
		System.out.println(user+"======="+user.getId());
		MybatisUtil.close(session);
	}
}
