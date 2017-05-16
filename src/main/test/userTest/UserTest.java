package userTest;

import org.apache.ibatis.session.SqlSession;

import dao.UserDao;
import model.User;
import util.MybatisUtil;

public class UserTest {
	public static void main(String[] args) {
		SqlSession session=MybatisUtil.getSession();
		UserDao userDao=session.getMapper(UserDao.class);
		User user=userDao.queryByUsernameAndPassword("admin", "222222");
		System.out.println(user+"======="+user.getId());
		MybatisUtil.close(session);
	}
}
