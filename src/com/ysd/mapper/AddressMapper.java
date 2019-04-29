package com.ysd.mapper;

import com.ysd.entity.Address;

public interface AddressMapper {
	/**
	 * 用户添加收货地址
	 * @param address 获取用户的地址
	 * @return 返回1添加成功
	 */
	int InsterAddress(Address address);
	/**
	 * 删除用户地址
	 * @param id 用户id
	 * @return 返回1删除成功
	 */
	int deleteAddress(int id);
	
	/**
	 * 根据id查看详细地址（用户选则提交订单时也用了）
	 * @param id
	 * @return
	 */
	Address selectAddressByid(int id);
	Address selectAddressByidqian(int id);

}
