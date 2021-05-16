import java.io.IOException;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;


/**
 * http客户端
 * 
 */
public class HttpClient {

    /**
     * post请求传输json数据
     * 
     * @param url url地址
     * @param json json数据
     * @param encoding 编码方式
     * @param headerMap 请求头中的键值对
     * @return
     * @throws Exception 
     */
    public static String sendPostDataByJson(String url, String json, String encoding, Map<String, String> headerMap) throws Exception {
        String result = "";

        // 创建httpclient对象
        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建post方式请求对象
        HttpPost httpPost = new HttpPost(url);
        // 将头信息设置到请求对象中
        if(headerMap != null) {
        	headerMap.forEach((key, value) -> {
        		httpPost.addHeader(key, value);
        	});
        }
        // 设置参数到请求对象中
        StringEntity stringEntity = new StringEntity(json, ContentType.APPLICATION_JSON);
        stringEntity.setContentEncoding(encoding);
        httpPost.setEntity(stringEntity);
		// 执行请求操作，并拿到结果（同步阻塞）
		CloseableHttpResponse response = httpClient.execute(httpPost);
		// 获取结果实体
		// 判断网络连接状态码是否正常(0--200都数正常)
		// response.getStatusLine().getStatusCode() == HttpStatus.SC_OK
		result = EntityUtils.toString(response.getEntity(), "utf-8");
		// 释放链接
		response.close();
		return result;
    }
    
    public static String sendPostDataByJson(String url, String json) throws Exception {
    	return sendPostDataByJson(url, json, "utf-8", null);
    }

    /**
     * post请求传输Xml数据
     * 
     * @param url url地址
     * @param xml xml数据
     * @param encoding 编码方式
     * @return
     * @throws Exception 
     */
    public static String sendPostDataByXml(String url, String xml, String encoding, Map<String, String> headerMap) throws Exception {
        String result = "";
        // 创建httpclient对象
        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建post方式请求对象
        HttpPost httpPost = new HttpPost(url);
        if(headerMap != null) {
        	headerMap.forEach((key, value) -> {
            	httpPost.addHeader(key, value);
            });
        }
        // 设置参数到请求对象中
        StringEntity stringEntity = new StringEntity(xml, ContentType.APPLICATION_XML);
        stringEntity.setContentEncoding(encoding);
        httpPost.setEntity(stringEntity);
		// 执行请求操作，并拿到结果（同步阻塞）
		CloseableHttpResponse response = httpClient.execute(httpPost);
		// 获取结果实体
		// 判断网络连接状态码是否正常(0--200都数正常)
		// response.getStatusLine().getStatusCode() == HttpStatus.SC_OK
		result = EntityUtils.toString(response.getEntity(), encoding);
		// 释放链接
		response.close();
		return result;
    }
    
    public static String sendPostDataByXml(String url, String xml) throws Exception {
    	return sendPostDataByXml(url, xml, "GBK", null);
    }
    
    // GET 调用
    public static String getAsString(String url) throws Exception{
    	CloseableHttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet(url);
        CloseableHttpResponse response1 = null;
        try {
            response1 = httpClient.execute(httpGet);
            System.out.println(response1.getStatusLine());
            HttpEntity entity1 = response1.getEntity();
            return EntityUtils.toString(entity1, "UTF-8");
        } finally {
            if (null != response1) {
                response1.close();
            }
        }
    }
    
    public static void main(String[] args) throws Exception {
		System.out.println(getAsString("http://localhost:8088/api/hello"));
	}

}
