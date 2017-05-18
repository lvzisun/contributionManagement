package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import model.Email;

public interface EmailDao {

	/**
	 * 根据指定id,查询某一条数据
	 * @param id
	 * @return Email
	 */
	Email queryById(Integer id);
	
	/**
	 * 根据发件人sendid,查询发件箱某一页的email信息
	 * @param sendid 发件人id
	 * @param first 起始数据下标
	 * @param rows 页面显示条数
	 * @param title 邮件标题
	 * @param content 邮件内容
	 * @param receivename 收件人名字
	 * @param order 是否排序
	 * @return List<Email>
	 */
	List<Email> queryBySendid(
			@Param("senid")Integer sendid,
			@Param("first")Integer first,
			@Param("rows")Integer rows,
			@Param("title")String title,
			@Param("content")String content,
			@Param("receivename")String receivename,
			@Param("order")String order);
	/**
	 * 增加一条email信息,返回受影响的行数id==null
	 * @param email
	 * @return int
	 */
	int addEmail(Email email);
	
	/**
	 * 删除一条email信息,返回受影响的行数id!=null
	 * @param id
	 * @return int
	 */
	int delEmail(Integer id);
	/**
	 * 根据指定id,返回email的status值
	 * @param id
	 * @return Integer
	 */
	Integer getStatusOfEmail(Integer id);
	
	/**
	 * 根据指定id,修改email的属性：status+=change,返回受影响的行数
	 * @param id
	 * @param change 变化量
	 * @return int
	 */
	int updateStatusOfEmail(Integer id,Integer change);
}
