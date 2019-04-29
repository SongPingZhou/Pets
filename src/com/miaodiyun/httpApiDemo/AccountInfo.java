package com.miaodiyun.httpApiDemo;

import com.miaodiyun.httpApiDemo.common.Config;
import com.miaodiyun.httpApiDemo.common.HttpUtil;

/**
 * ��ȡ�������˺���Ϣ�ӿڵ���ʾ��
 * 
 * @ClassName: AccountInfo
 * @Description: ��ȡ�������˺���Ϣ�ӿڵ���ʾ��
 *
 */
public class AccountInfo
{
	private static String operation = "/query/accountInfo";

	private static String accountSid = Config.ACCOUNT_SID;

	/**
	 * ��ȡ�������˺���Ϣ
	 */
	public static void execute()
	{
		String url = Config.BASE_URL + operation;
		String body = "accountSid=" + accountSid + HttpUtil.createCommonParam();

		// �ύ����
		String result = HttpUtil.post(url, body);
		System.out.println("result:" + System.getProperty("line.separator") + result);
	}
}
