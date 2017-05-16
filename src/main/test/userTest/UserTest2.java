package userTest;

import org.apache.ibatis.session.SqlSession;

import dao.UserMapper;
import util.MybatisUtil;

public class UserTest2 {
	public static void main(String[] args) {
		SqlSession session=MybatisUtil.getSession();
		
		UserMapper userDao=session.getMapper(UserMapper.class);
		
		session.commit();
		session.close();
	}
}
