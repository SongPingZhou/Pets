package com.ysd.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

		// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
		public static String app_id = "2016092300579830";
		
		// 商户私钥，您的PKCS8格式RSA2私钥
	    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCW1FBRtS04Q7WQJ1EwPN5e8P1OyZ31yK0s7JyQH7k6BD+xDqRmRNZWPy/wvatlWHn7TSFB7vCW4aY8z8+rklAduxHNerO7X6mesnPFn8itfpEbUA5uAmI8ShSz3PRbobLvzX+JZl1zkq5elti/Zuq+V6inUGoRsxwplRevSTrsPYJsqOwp38fL0o2PqA8RUFgvnOPpV/pRQumo9ZHjW0QtgzAg0kCnFo5TmEGXu8VylGPNNA0RET35i5tkxJsHrXs1b3ozgas6F232I+nat2AYsKnuB433M9bIEjjXuL2yC5zmi5qafN6BwIdH9kPuVyv83gsuev1tTWOuoRj825K1AgMBAAECggEBAI0BJ6V7Ty8OfaqqVwhVnz365ZTGf9nLJbqd6TADuFI4rqKEIcVKDWbL47GYX6d7M25wCOtuyZUElzi6vlaTjjp9LIOAdo5xPE2UXw8d9ancbSOvkA3gRJ5AU2Ji6j7PyEzPPK/i9vKY6lKbiz5EpKgVoyHn14F8hJOLQn0oZOF8njb99G/BE4JSiwjbWOQkmt/W4E99rYazBbjJ7hXvQKlkQwKOUCoCudEHgjePCAM1DTCs9EIiw+naL8CglXVkysoxeNEko25af32X4zmYCRgstMafTfkt6Glz4XZGdT8adLsi1qB1z6KnwiV5c1k4B43dkV3uERf/epDP9cxZjQECgYEA2SohlKcCkt7SvkeAgZHvqHRtQvOtjeJRYuyw/7BtQlURM+kxrfcFwCs8bHTwbhHx1TGhZmCOEJXASDnFGapJxmEu3MbnEvy4M22b/Z6PDbecjzAFBo65Xza9plNEnk0D6QZK+j9tPe1z/oluPUS+OEvT0xzsVDq6yn1Jr0tXwGUCgYEAsc1VTdxCDw471rjLEeMRM4xhjRxh6pW/89Mu9x2H6RtcsMteYFhxDw6ZBg9if+X0Ks3wMUO6hhGfQvGz86jsxcwpeI9lLRPH5bZPy6vF5tgN2YMtnR3rj3QylOpFthwtaKztXoqCOyS0rB8ad0Q/6oZQzZsgym6WmVNCXBZd3BECgYEAhuaUG6qvf5rpYQg7vMFyFbvVT7zduAC5u/D6dqsbBBSh7hRTJxUHPnvdOiZeYJHHHz+IWndqaMUNwBAa7zmIQLKIEN+CFZpltpTFTQQdK1E+8PfMd2lbn9j6cILTYl7HKg8drlyOOOTzpE+s6mR0obYA7OjPqfcdp8GybzEnXr0CgYEAjBgT3LNtwVsfvwH/z2owhYNY4cy5QhMYGdAOM1urWPrcP9kd1aAaBRklbWb133yatJdraAXLlBOSfzbe6V/yn69MBdhGigwJ92981CfWWRtnXjlD2YZXssKFkFw+7UyqYs3Ogi10i5FSYkRnoA3AptOKG1bdsWMNemXl5ZUiA2ECgYApm5tj77OYBfYGL9D8/sw3vxFjVS25e+nwR3ceef5T2Sx8uGfK5NOT3xn66nRi+2xFi7XdK6IM0OpKrWSNNaGZ53p6fG4oXZy8DfFYbWeTqM0GXegyBuHb+iELF6+nYscxMkY6LCyujkvwcBLWnEUiEc4FcUdk0KZldu3M2IkzAw==";
		
		// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
	    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAltRQUbUtOEO1kCdRMDzeXvD9Tsmd9citLOyckB+5OgQ/sQ6kZkTWVj8v8L2rZVh5+00hQe7wluGmPM/Pq5JQHbsRzXqzu1+pnrJzxZ/IrX6RG1AObgJiPEoUs9z0W6Gy781/iWZdc5KuXpbYv2bqvleop1BqEbMcKZUXr0k67D2CbKjsKd/Hy9KNj6gPEVBYL5zj6Vf6UULpqPWR41tELYMwINJApxaOU5hBl7vFcpRjzTQNERE9+YubZMSbB617NW96M4GrOhdt9iPp2rdgGLCp7geN9zPWyBI417i9sguc5ouamnzegcCHR/ZD7lcr/N4LLnr9bU1jrqEY/NuStQIDAQAB";

		// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
		public static String notify_url = "http://localhost:8080/Pets/zhifu/notify_url.jsp";

		// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
		public static String return_url = "http://localhost:8080/Pets/zhifu/return_url.jsp";

		// 签名方式
		public static String sign_type = "RSA2";
		
		// 字符编码格式
		public static String charset = "utf-8";
		
		// 支付宝网关
		public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
		
		// 支付宝网关
		public static String log_path = "C:\\";


	//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

	    /** 
	     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
	     * @param sWord 要写入日志里的文本内容
	     */
		 public static void logResult(String sWord) {
		        FileWriter writer = null;
		        try {
		            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
		            writer.write(sWord);
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            if (writer != null) {
		                try {
		                    writer.close();
		                } catch (IOException e) {
		                    e.printStackTrace();
		                }
		            }
		        }
		    }
	
}
