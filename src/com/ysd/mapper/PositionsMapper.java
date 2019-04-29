package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Positions;
import com.ysd.entity.Product;
import com.ysd.entity.Resposition;

public interface PositionsMapper {
	/**
	 * ��ѯ�����ƽ��λ��
	 * @return
	 */
	List<Positions> selectPositions();
	/**
	 * �����ƽ��λ�ò�ѯ���б��ƽ�ĳ���
	 * @param id
	 * @return
	 */
	List<Product> selectPositionsByid(int id);
	/**
	 * ��������ж���������
	 * @param id
	 * @return
	 */
	int selectPositionsByidCount(int id);
	/**
	 * ����ƽ�λ��
	 * @param poid
	 * @param pid
	 * @param weight
	 * @return
	 */
	int insertPositions(Resposition resposition);
	/**
	 * ���ƽ��ɾ������Ʒ
	 * @param pid ��Ʒid
	 * @return 
	 */
	int deleteRePositions(int pid);
}
