package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Comments;
import com.ysd.entity.Fenye;


public interface CommentsMapper {
	/**
	 * ��ѯ������
	 * @param fenye
	 * @return
	 */
	  int selectCount(Fenye fenye);
	/**
	 * ��ҳ��ѯ����
	 * @param fenye
	 * @return
	 */
	  List<Comments> selectComments(Fenye fenye);
	  List<Comments>  SelectCommentsTypeByid(Fenye fenye);
	  /**
	   * �鿴�ĵ������۵�����
	   * @param id
	   * @return
	   */
	  Comments selectCommentsByid(int id);
	  
	  int insertComments(Comments comments);
	  int updateComments(Comments comments);
	  int deleteComments(String[] id);
	  /**
	   * ǰ̨�û�����
	   * @param comments ��ȡ�û���id�������id���������ݣ����������
	   * @return ����1���۳ɹ�
	   */
	  int insertComment(Comments comments);
	  /**
	   * ǰ̨���û����۵��޼�һ
	   * @param id ������ʵ�м�һ
	   * @return ����1�޸ĳɹ�
	   */
	  int updateCommentByExt(int id);
	  /**
	   * ǰ̨���û����۵��޼�һ
	   * @param id ������ʵ�м�һ
	   * @return ����1�޸ĳɹ�
	   */
	  int updateCommentByExtReduce(int id);
	  /**
	   * ��ѯ�������۵�ǰ������ʾ����ҳ
	   * @return �����������������Լ������û��ͳ���ͼƬ������id
	   */
	  List<Comments> selectCommentsByExt2();
	  
	  
	  List<Comments> selectCommentszhl();
}
