package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Lately;

public interface LatelyMapper {
	/**
	 * �����������
	 * @param lately
	 * @return
	 */
	int insertLately(Lately lately);
	
	/**
	 * �鿴��ͬ�û��������Ƿ�����ͬ����Ʒ
	 * @param lately ������������
	 * @return
	 */
	Lately selectLately(Lately lately);

	/**
	 * �鿴���û���������������������ɾ��ʹ�ã�
	 * @param userid �û���id
	 * @return
	 */
	List<Lately> selectLatelyByUserid(int userid);
	/**
	 * ���û�����������������ʱ��ɾ��ʱ�������������һ��������
	 * @param id �û�ʱ���������������
	 * @return
	 */
	Integer deleteLatelyByTime(int id);
	
	/**
	 * �޸��������������Ʒ��ʱ��
	 * @param id
	 * @return
	 */
	Integer updateLately(int id);



}
