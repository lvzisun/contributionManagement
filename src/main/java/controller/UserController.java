package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.User;
import service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 保存用户对象
	 * 参数  username password email
	 * 返回值是json {errorCode:0,data:"ok"} {errorCode:1,errorMessage:"系统繁忙，请稍后重试"}
	 */
	//username=request.getParameter("username")
	@RequestMapping(value="register",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> registerUser(@RequestParam("username")String username,String password,String email){
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		Map<String, Object>map=new HashMap<>();
		try{
			//异常在哪个层次处理
			int id=userService.insertUser(user);
			map.put("errorCode", 0);
			map.put("errorMessage", "ok");
			map.put("data", id);
		}catch (Exception e) {
			e.printStackTrace();
			map.put("errorCode", 1);
			map.put("errorMessage", "系统繁忙，请稍后重试");
		}
		return map;
	}
	
	/**
	 * 登录，返回一个jsp页面
	 * @param username
	 * @param password
	 * @return jsp文件的文件名 
	 */
	@RequestMapping(value="login",method={RequestMethod.GET,RequestMethod.POST})
	public String login(String username,String password,HttpServletRequest request){
		User user=userService.login(username,password);
		if(user==null){
			return "login";
		}
		return "index";
	}

}
