package dao;

import org.apache.ibatis.annotations.Param;

import model.User;

public interface UserMapper {
	/**
	 * 跟据指定用户名和密码查询是否有该用户
	 * @param username
	 * @param password
	 * @return User
	 */
	User queryByUsernameAndPassword(@Param("username")String username,@Param("password")String password);
	/**
	 * 根据指定id查询是否有该用户
	 * @param id 
	 * @return User
	 */
	User queryById(Integer id);
	/**
	 * 增加一名用户，id==null
	 * @param user
	 * @return int(受影响的行数)
	 */
	int insertUser(User user);
	/**
	 * 根据指定id删除某一用户
	 * @param id
	 * @return int(受影响的行数)
	 */
	int deleteById(Integer id);
	/**
	 * 根据user.id修改非password字段的数据
	 * @param user
	 * @return int(受影响的行数)
	 */
	int updateInfo(User user);
	/**
	 * 根据指定id修改密码
	 * @param id
	 * @param password
	 * @return int(受影响的行数)
	 */
	int updatePassword(@Param("id")Integer id,@Param("password")String password);
}
