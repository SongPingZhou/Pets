package com.ysd.mapper;

import com.ysd.entity.Address;

public interface AddressMapper {
	/**
	 * �û�����ջ���ַ
	 * @param address ��ȡ�û��ĵ�ַ
	 * @return ����1��ӳɹ�
	 */
	int InsterAddress(Address address);
	/**
	 * ɾ���û���ַ
	 * @param id �û�id
	 * @return ����1ɾ���ɹ�
	 */
	int deleteAddress(int id);
	
	/**
	 * ����id�鿴��ϸ��ַ���û�ѡ���ύ����ʱҲ���ˣ�
	 * @param id
	 * @return
	 */
	Address selectAddressByid(int id);
	Address selectAddressByidqian(int id);

}
