package com.miaodiyun.httpApiDemo;

import java.net.URLEncoder;

import com.miaodiyun.httpApiDemo.common.Config;
import com.miaodiyun.httpApiDemo.common.HttpUtil;

/**
 * ��֤��֪ͨ���Žӿ�
 * 
 * @ClassName: IndustrySMS
 * @Description: ��֤��֪ͨ���Žӿ�
 *
 */
public class IndustrySMS
{
	private static String operation = "/industrySMS/sendSMS";

	private static String accountSid = Config.ACCOUNT_SID;
	private static String to = "";
	private static String smsContent = "";
	
	
	public static String getTo() {
		return to;
	}


	public static void setTo(String to) {
		IndustrySMS.to = to;
	}


	public static String getSmsContent() {
		return smsContent;
	}


	public static void setSmsContent(String smsContent) {
		IndustrySMS.smsContent = smsContent;
	}


	/**
	 * ��֤��֪ͨ����
	 */
	public static void execute()
	{
		String tmpSmsContent = null;
	    try{
	      tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
	    }catch(Exception e){
	      
	    }
	    String url = Config.BASE_URL + operation;
	    String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
	        + HttpUtil.createCommonParam();

	    // �ύ����
	    String result = HttpUtil.post(url, body);
	    System.out.println("result:" + System.getProperty("line.separator") + result);
	}
}
