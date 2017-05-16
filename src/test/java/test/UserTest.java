package test;

import org.apache.ibatis.session.SqlSession;

import dao.UserMapper;
import model.User;
import util.MybatisUtil;

public class UserTest {
	public static void main(String[] args) {
		SqlSession session=MybatisUtil.getSession();
		
		UserMapper userDao=session.getMapper(UserMapper.class);
		
		User user=userDao.queryByUsernameAndPassword("admin", "222222");
		System.out.println(user+"======="+user.getId());
		user=userDao.queryById(2);
		System.out.println(user+"======="+user.getId());
		user.setId(null);
		User u=new User();
		u.setPassword("dafjdf");
		u.setUsername("dfjadifhjasdi");
		u.setPhone(user.getPhone());
		u.setStatus(user.getStatus());
		u.setAddress(user.getAddress());
		u.setAge(user.getAge());
		u.setRoleid(user.getRoleid());
		u.setCredit(user.getCredit());
		int count=userDao.insertUser(u);
		System.out.println("增加操作"+count);
		//int deleteCount=userDao.deleteById(2);
		//System.out.println(deleteCount);
		user.setId(18);
		int updateCount=userDao.updateInfo(user);
		System.out.println("更新基本信息操作"+updateCount);
		int updatePassword=userDao.updatePassword(16, "2222222");
		System.out.println("更新密码操作"+updatePassword);
		
		
		session.commit();
		MybatisUtil.close(session);
		
	}
}
