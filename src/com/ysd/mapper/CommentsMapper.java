package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Comments;
import com.ysd.entity.Fenye;


public interface CommentsMapper {
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
	  List<Comments> selectComments(Fenye fenye);
	  List<Comments>  SelectCommentsTypeByid(Fenye fenye);
	  /**
	   * 查看的单个评论的详情
	   * @param id
	   * @return
	   */
	  Comments selectCommentsByid(int id);
	  
	  int insertComments(Comments comments);
	  int updateComments(Comments comments);
	  int deleteComments(String[] id);
	  /**
	   * 前台用户评论
	   * @param comments 获取用户的id，宠物的id，评论内容，宠物满意度
	   * @return 返回1评论成功
	   */
	  int insertComment(Comments comments);
	  /**
	   * 前台对用户评论点赞加一
	   * @param id 对评论实行加一
	   * @return 返回1修改成功
	   */
	  int updateCommentByExt(int id);
	  /**
	   * 前台对用户评论点赞减一
	   * @param id 对评论实行减一
	   * @return 返回1修改成功
	   */
	  int updateCommentByExtReduce(int id);
	  /**
	   * 查询热门评论的前六条显示到首页
	   * @return 返回六条热门评论以及评论用户和宠物图片及宠物id
	   */
	  List<Comments> selectCommentsByExt2();
	  
	  
	  List<Comments> selectCommentszhl();
}
