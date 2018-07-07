package com.zxbangban.util;

import com.aliyun.mns.client.CloudAccount;
import com.aliyun.mns.client.CloudTopic;
import com.aliyun.mns.client.MNSClient;
import com.aliyun.mns.common.ServiceException;
import com.aliyun.mns.model.BatchSmsAttributes;
import com.aliyun.mns.model.MessageAttributes;
import com.aliyun.mns.model.RawTopicMessage;
import com.aliyun.mns.model.TopicMessage;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.zxbangban.enums.AliyunMNSTemplateCode;

import java.util.Random;

public class AliyunMNSUtil {

    private static final String accessId = "LTAIGlJAZQCRcR78";
    private static final String accessKey = "wVM6DBKxKqfwzrrWbIUKsHQtlth2BC";
    private static final String acountEndpoint = "https://1564985939361524.mns.cn-beijing.aliyuncs.com/";

    private static final String topicRef = "sms.topic-cn-beijing";

    public static String doSMSNotification(int MessageType,String phoneNumber){
        return sendMNS(MessageType,phoneNumber);
    }

    private static  String sendMNS(int messageType,String phoneNumber){
        //设置超时时间-可自行调整
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
        //初始化ascClient需要的几个参数
        final String product = "Dysmsapi";//短信API产品名称（短信产品名固定，无需修改）
        final String domain = "dysmsapi.aliyuncs.com";//短信API产品域名（接口地址固定，无需修改）
        //替换成你的AK
        //初始化ascClient,暂时不支持多region（请勿修改）
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessId,
                accessKey);
        try {
            DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        } catch (ClientException e) {
            e.printStackTrace();
        }
        IAcsClient acsClient = new DefaultAcsClient(profile);
        //组装请求对象
        SendSmsRequest request = new SendSmsRequest();
        //使用post提交
        request.setMethod(MethodType.POST);
        //必填:待发送手机号。支持以逗号分隔的形式进行批量调用，批量上限为1000个手机号码,批量调用相对于单条调用及时性稍有延迟,验证码类型的短信推荐使用单条调用的方式；发送国际/港澳台消息时，接收号码格式为00+国际区号+号码，如“0085200000000”
        request.setPhoneNumbers(phoneNumber);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("装修帮办");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode(AliyunMNSTemplateCode.codeOf(messageType).getCode());
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        //友情提示:如果JSON中需要带换行符,请参照标准的JSON协议对换行符的要求,比如短信内容中包含\r\n的情况在JSON中需要表示成\\r\\n,否则会导致JSON在服务端解析失败
        String code = "";
        if(messageType == 1){
            code = randomSMSCode();
            System.out.println(code);
            request.setTemplateParam("{\"code\":"+code+"}");
        }
        //可选-上行短信扩展码(扩展码字段控制在7位或以下，无特殊需求用户请忽略此字段)
        //request.setSmsUpExtendCode("90997");
        //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
        //request.setOutId("yourOutId");
        //请求失败这里会抛ClientException异常
        SendSmsResponse sendSmsResponse = null;
        try {
            sendSmsResponse = acsClient.getAcsResponse(request);
        } catch (ClientException e) {
            System.out.println("短信发送失败！");
            e.printStackTrace();
        }
        if(sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK")) {
            return code;
        }else {
            return "failure";
        }
    }

    private static String sendNotification(int messageType,String phoneNumber){
        CloudAccount cloudAccount = new CloudAccount(accessId, accessKey, acountEndpoint);
        MNSClient mnsClient = cloudAccount.getMNSClient();
        CloudTopic cloudTopic = mnsClient.getTopicRef(topicRef);

        RawTopicMessage rawTopicMessage = new RawTopicMessage();
        rawTopicMessage.setMessageBody("装修帮办短信验证服务");

        MessageAttributes messageAttributes = new MessageAttributes();
        BatchSmsAttributes batchSmsAttributes = new BatchSmsAttributes();
        batchSmsAttributes.setFreeSignName("装修帮办");
        batchSmsAttributes.setTemplateCode(AliyunMNSTemplateCode.codeOf(messageType).getCode());

        BatchSmsAttributes.SmsReceiverParams smsReceiverParams = new BatchSmsAttributes.SmsReceiverParams();
        String code = "";
        if(messageType == 1){
            code = randomSMSCode();
            smsReceiverParams.setParam("code",code);
        }
        batchSmsAttributes.addSmsReceiver(phoneNumber,smsReceiverParams);
        messageAttributes.setBatchSmsAttributes(batchSmsAttributes);
        TopicMessage topicMessage = null;
        try {
            topicMessage = cloudTopic.publishMessage(rawTopicMessage,messageAttributes);
        }catch (ServiceException se){
            se.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }

        if(topicMessage!=null){
            mnsClient.close();
            if(code.length() >0){
                return code;
            }
            return "success";
        }else {
            return "failure";
        }
    }

    private static String randomSMSCode(){
        int min = 100000;
        int max = 999999;
        Random random = new Random();
        int mnscode = random.nextInt(max)%(max-min+1) + min;
        return String.valueOf(mnscode);
    }

}
