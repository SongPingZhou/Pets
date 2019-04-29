package com.ysd.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *������AlipayConfig
 *���ܣ�����������
 *��ϸ�������ʻ��й���Ϣ������·��
 *�޸����ڣ�2017-04-05
 *˵����
 *���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
 *�ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���
 */

public class AlipayConfig {
	//�����������������������������������Ļ�����Ϣ������������������������������

		// Ӧ��ID,����APPID���տ��˺ż�������APPID��Ӧ֧�����˺�
		public static String app_id = "2016092300579830";
		
		// �̻�˽Կ������PKCS8��ʽRSA2˽Կ
	    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCW1FBRtS04Q7WQJ1EwPN5e8P1OyZ31yK0s7JyQH7k6BD+xDqRmRNZWPy/wvatlWHn7TSFB7vCW4aY8z8+rklAduxHNerO7X6mesnPFn8itfpEbUA5uAmI8ShSz3PRbobLvzX+JZl1zkq5elti/Zuq+V6inUGoRsxwplRevSTrsPYJsqOwp38fL0o2PqA8RUFgvnOPpV/pRQumo9ZHjW0QtgzAg0kCnFo5TmEGXu8VylGPNNA0RET35i5tkxJsHrXs1b3ozgas6F232I+nat2AYsKnuB433M9bIEjjXuL2yC5zmi5qafN6BwIdH9kPuVyv83gsuev1tTWOuoRj825K1AgMBAAECggEBAI0BJ6V7Ty8OfaqqVwhVnz365ZTGf9nLJbqd6TADuFI4rqKEIcVKDWbL47GYX6d7M25wCOtuyZUElzi6vlaTjjp9LIOAdo5xPE2UXw8d9ancbSOvkA3gRJ5AU2Ji6j7PyEzPPK/i9vKY6lKbiz5EpKgVoyHn14F8hJOLQn0oZOF8njb99G/BE4JSiwjbWOQkmt/W4E99rYazBbjJ7hXvQKlkQwKOUCoCudEHgjePCAM1DTCs9EIiw+naL8CglXVkysoxeNEko25af32X4zmYCRgstMafTfkt6Glz4XZGdT8adLsi1qB1z6KnwiV5c1k4B43dkV3uERf/epDP9cxZjQECgYEA2SohlKcCkt7SvkeAgZHvqHRtQvOtjeJRYuyw/7BtQlURM+kxrfcFwCs8bHTwbhHx1TGhZmCOEJXASDnFGapJxmEu3MbnEvy4M22b/Z6PDbecjzAFBo65Xza9plNEnk0D6QZK+j9tPe1z/oluPUS+OEvT0xzsVDq6yn1Jr0tXwGUCgYEAsc1VTdxCDw471rjLEeMRM4xhjRxh6pW/89Mu9x2H6RtcsMteYFhxDw6ZBg9if+X0Ks3wMUO6hhGfQvGz86jsxcwpeI9lLRPH5bZPy6vF5tgN2YMtnR3rj3QylOpFthwtaKztXoqCOyS0rB8ad0Q/6oZQzZsgym6WmVNCXBZd3BECgYEAhuaUG6qvf5rpYQg7vMFyFbvVT7zduAC5u/D6dqsbBBSh7hRTJxUHPnvdOiZeYJHHHz+IWndqaMUNwBAa7zmIQLKIEN+CFZpltpTFTQQdK1E+8PfMd2lbn9j6cILTYl7HKg8drlyOOOTzpE+s6mR0obYA7OjPqfcdp8GybzEnXr0CgYEAjBgT3LNtwVsfvwH/z2owhYNY4cy5QhMYGdAOM1urWPrcP9kd1aAaBRklbWb133yatJdraAXLlBOSfzbe6V/yn69MBdhGigwJ92981CfWWRtnXjlD2YZXssKFkFw+7UyqYs3Ogi10i5FSYkRnoA3AptOKG1bdsWMNemXl5ZUiA2ECgYApm5tj77OYBfYGL9D8/sw3vxFjVS25e+nwR3ceef5T2Sx8uGfK5NOT3xn66nRi+2xFi7XdK6IM0OpKrWSNNaGZ53p6fG4oXZy8DfFYbWeTqM0GXegyBuHb+iELF6+nYscxMkY6LCyujkvwcBLWnEUiEc4FcUdk0KZldu3M2IkzAw==";
		
		// ֧������Կ,�鿴��ַ��https://openhome.alipay.com/platform/keyManage.htm ��ӦAPPID�µ�֧������Կ��
	    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAltRQUbUtOEO1kCdRMDzeXvD9Tsmd9citLOyckB+5OgQ/sQ6kZkTWVj8v8L2rZVh5+00hQe7wluGmPM/Pq5JQHbsRzXqzu1+pnrJzxZ/IrX6RG1AObgJiPEoUs9z0W6Gy781/iWZdc5KuXpbYv2bqvleop1BqEbMcKZUXr0k67D2CbKjsKd/Hy9KNj6gPEVBYL5zj6Vf6UULpqPWR41tELYMwINJApxaOU5hBl7vFcpRjzTQNERE9+YubZMSbB617NW96M4GrOhdt9iPp2rdgGLCp7geN9zPWyBI417i9sguc5ouamnzegcCHR/ZD7lcr/N4LLnr9bU1jrqEY/NuStQIDAQAB";

		// �������첽֪ͨҳ��·��  ��http://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
		public static String notify_url = "http://localhost:8080/Pets/zhifu/notify_url.jsp";

		// ҳ����תͬ��֪ͨҳ��·�� ��http://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
		public static String return_url = "http://localhost:8080/Pets/zhifu/return_url.jsp";

		// ǩ����ʽ
		public static String sign_type = "RSA2";
		
		// �ַ������ʽ
		public static String charset = "utf-8";
		
		// ֧��������
		public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
		
		// ֧��������
		public static String log_path = "C:\\";


	//�����������������������������������Ļ�����Ϣ������������������������������

	    /** 
	     * д��־��������ԣ�����վ����Ҳ���ԸĳɰѼ�¼�������ݿ⣩
	     * @param sWord Ҫд����־����ı�����
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
