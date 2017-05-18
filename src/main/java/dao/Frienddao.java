package dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import model.Friend;

public interface Frienddao {
	
	/**
	 * 根据指定id返回一个Friend对象
	 * @param id
	 * @return Friend
	 */
	Friend queryById(Integer id);

	/**
	 * 显示个人通讯录的具体某一页的friend信息
	 * @param userid,所属的某一用户id
	 * @param first 起始数据下标
	 * @param rows 页面显示条数
	 * @param realname 查询条件：名字
	 * @param phone 查询条件：电话
	 * @return List<Friend>
	 */
	List<Friend> queryForPage(
			@Param("userid")Integer userid,
			@Param("first")Integer first,
			@Param("rows")Integer rows,
			@Param("realname")String realname,
			@Param("phone")String phone);

	/**
	 * 修改指定id的数据信息,返回受影响的行数,id!=null
	 * @param friend
	 * @return int
	 */
	int updateFriend(Friend friend);
	
	/**
	 * 增加一条数据,返回受影响的行数,id==null
	 * @param friend
	 * @return int
	 */
	int addFriend(Friend friend);
	
	/**
	 * 根据指定id,删除某一条数据,返回受影响的行数id!=null
	 * @param id
	 * @return int
	 */
	int delFriend(Integer id);

}
