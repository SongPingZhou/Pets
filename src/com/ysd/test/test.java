package com.ysd.test;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.ibatis.session.SqlSession;

import com.ysd.entity.Address;
import com.ysd.entity.Comments;
import com.ysd.entity.Fenye;
import com.ysd.entity.News;
import com.ysd.entity.Orders;
import com.ysd.entity.OrdersDetails;
import com.ysd.entity.Product;
import com.ysd.entity.Productpic;
import com.ysd.entity.Recyclebin;
import com.ysd.entity.Resposition;
import com.ysd.entity.ShoppingCart;
import com.ysd.entity.User;
import com.ysd.entity.UserCustomers;
import com.ysd.mapper.AddressMapper;
import com.ysd.mapper.CommentsMapper;
import com.ysd.mapper.NewMapper;
import com.ysd.mapper.OrdersDetailsMapper;
import com.ysd.mapper.OrdersMapper;
import com.ysd.mapper.PositionsMapper;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductPicMapper;
import com.ysd.mapper.ProductStoreMapper;
import com.ysd.mapper.RecyclebinMapper;
import com.ysd.mapper.ShoppingcartMapper;
import com.ysd.mapper.UserCustomersMapper;
import com.ysd.util.MybatisUtil;
public class test {
	public static void main(String[] args) {
		SqlSession session=MybatisUtil.getSession(true);
		NewMapper mapper = session.getMapper(NewMapper.class);
		List<News> selectAllNews = mapper.selectAllNews();
		for (News news : selectAllNews) {
			System.out.println(news);
		}
	}
}

