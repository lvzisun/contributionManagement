package test;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;

import dao.Frienddao;
import model.Friend;
import util.MybatisUtil;

public class FriendMapperTest {

	@Test
	public void testAddFriend(){
		SqlSession session=MybatisUtil.getSession();
		Frienddao friendDao=session.getMapper(Frienddao.class);
		Friend f=new Friend();
		f.setRealnmae("张山");
		int count=friendDao.addFriend(f);
		session.commit();
		session.close();
		Assert.assertTrue(count==1);
	}
}
