package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.User;
import com.ysd.entity.UserCustomers;


public interface UserMapper {
	/**
	 * 查询总条数
	 * @param fenye
	 * @return
	 */
	  int selectCount(Fenye fenye);
	/**
	 * 分页查询所有
	 * @param fenye
	 * @return
	 */
	  List<User> selectUser(Fenye fenye);
	  /**
	   * 通过id查询单个用户
	   * @param id
	   * @return
	   */
	  User selectUserByid(int id);
	  /**
	   * 添加用户
	   * @param user
	   * @return
	   */
	  int insertUser(User user);
	  /**
	   * 修改用户
	   * @param user
	   * @return
	   */
	  int updateUser(User user);
	  /**
	   * （批量）删除用户
	   * @param id
	   * @return
	   */
	  int deleteUser(String[] id);
	  /**
	   * 获取到前台的额用户和密码和数据库进行比对、是否存在;
	   * @param user
	   * @return
	   */
	  User selectUserByUser(User user);
	  /**
	   * 用户修改密码
	   * @param user
	   * @return
	   */
	  int updateuserByPwd(User user);
	  
	  /**
	   * 查询刚注册的新用户
	   * @return
	   */
	  User selectNewUser();
	  
	  /**
	   * 对新用户的详情占位置
	   * @param id
	   * @return
	   */
	  int insertNewusercustomers(int id);
	  
	  
	  User  selectUserUserName(User user);
	  
	  int insertUserUserName(User user);

	  
	  User  selectUserUserNamePhone(User user);
	  
	  int updateUserUserPhone(User user);

	 
}
