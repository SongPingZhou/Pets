package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.ShoppingCart;

public interface ShoppingcartMapper {
	
	/**（前台）
	 * 查询用户的购物车数据
	 * @param uid 用户的id
	 * @return 返回一个用户的所有数据
	 */
	List<ShoppingCart> selectShoppingCart(int uid);
	
	/**
	 * 用户去结算时把相应的多个商品查出
	 * @param uid 用户id,
	 * @param cartid 用户点击结算的购物车的id(多个)
	 * @return
	 */
	List<ShoppingCart> selectShoppingCartByCartidAndUserId(String[] cartid);
	/**
	 * 增加购物车的商品数量
	 * @param id 需要增加的商品的id
	 * @return 返回1增加成功
	 */
	int addShoppingcartSize(int id);
	
	/**
	 * 减少购买的数量
	 * @param id 需要减少的宠物id
	 * @return 返回1减少成功
	 */
	int reduceShoppingcartSize(int id);
	
	/**
	 * 用户删除购物车的数据
	 * @param id 购物车的数据id
	 * @return 返回1删除成功
	 */
	int deleteShoppingcart(int id);
	
	/**
	 * 对购物车进行添加
	 * @param cart 购物车类
	 * @return返回1添加成功
	 */
	int AddShoppingcart(ShoppingCart cart);
	
	/**
	 * 清空用户的购物车
	 * @return
	 */
	int DeleteShopping(int id);
	
	/**
	 * 查询的购物车是否有相同的宠物，有的话对其数量进行添加
	 * @param userid 用户的id
	 * @param Ext2 用户所选的配图的id
	 * @return
	 */
	ShoppingCart selectShoppingCartByUseridAndPeitu(int userid,int Ext2);
	
	/**
	 * 购物车如果已经存在则对其数量进行一个添加
	 * @param userid 用户的id
	 * @param Ext2 配图的id
	 * @param size 要添加的数量
	 * @return
	 */
	int updateShopping(int userid,int Ext2,int size);
}
