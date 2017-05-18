package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import model.Article;

public interface ArticleDao {

	/**
	 * 根据指定id,查询某一条Article
	 * 
	 * @param id
	 * @return Article
	 */
	Article queryById(Integer id);

	/**
	 * 根据作者authorid,查询我的稿件某一页的article信息
	 * 
	 * @param authorid
	 * @param first
	 * @param rows
	 * @param title
	 * @param typename
	 * @param stylename
	 * @param order
	 * @return List<Article>
	 */
	List<Article> queryForPage(@Param("authorid") Integer authorid, @Param("first") Integer first,
			@Param("rows") Integer rows, @Param("title") String title, @Param("typename") String typename,
			@Param("stylename") String stylename, @Param("order") String order);

	/**
	 * 增加一条文章,返回受影响的行数，id==null
	 * 
	 * @param article
	 * @return int
	 */
	int addArticle(Article article);

	/**
	 * 根据指定id,删除一条article数据，返回受影响的行数id!=null
	 * 
	 * @param id
	 * @return int
	 */
	int delArticle(Integer id);

	/**
	 * 根据指定id,修改一条articel数据，返回受影响的行数，id!=null
	 * 
	 * @param articel
	 * @return int
	 */
	int updateArticel(Article articel);
	
	/**
	 * 根据指定id,返回article的状态参数
	 * @param id
	 * @return
	 */
	Integer getStatusOfArticle(Integer id);
	
	/**
	 * 根据指定id,修改article的属性：status+=change,返回受影响的行数
	 * @param id
	 * @param change 变化量
	 * @return int
	 */
	int updateStatusOfArticle(Integer id,Integer change);
}
