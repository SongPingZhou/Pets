package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Recyclebin;

public interface RecyclebinMapper {
	/**
	 * ��ҳ��ѯ����վ����
	 * @param fy ��ҳ������
	 * @return
	 */
	List<Recyclebin> selectRecyclebin(Fenye fy);
	
	/**
	 * ��ѯ������
	 * @param fy
	 * @return
	 */
	int selectRecyclebinCount(Fenye fy);
	
	/**
	 * ���ݻָ���ӻ���վɾ������
	 * @param id ����վid
	 * @return
	 */
	int deleteRecyclebin(int id);
}
