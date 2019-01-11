package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class kakao
 */
@WebServlet("/kakao")
public class kakao extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String code = request.getParameter("code");
		
		System.out.println("code : "+code);
		
		String appKey = "7bed2c2cc35da2f635429b5665085d84";
		
		String redirectURI = "http://localhost:8181/TeamProj/kakao";
			   try {
			    //연결
			    URL url = new URL("https://kauth.kakao.com/oauth/token");
			    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			    conn.setDoOutput(true);
			    conn.setRequestMethod("POST");
			    conn.setRequestProperty("Accept-Language",  "ko-kr,ko;q=0.8,en-us;q=0.5,en;q=0.3");
			  
			   //데이터
			   String param = URLEncoder.encode("grant_type", "UTF-8") + "=" + URLEncoder.encode("authorization_code", "UTF-8");
			   param += "&" + URLEncoder.encode("client_id", "UTF-8") + "=" + URLEncoder.encode(appKey, "UTF-8");
			   param += "&" + URLEncoder.encode("redirect_uri", "UTF-8") + "=" + URLEncoder.encode(redirectURI, "UTF-8");
			   param += "&" + URLEncoder.encode("code", "UTF-8") + "=" + URLEncoder.encode(code, "UTF-8");
			   //전송
			   OutputStreamWriter osw = new OutputStreamWriter(conn.getOutputStream());
			   osw.write(param);
			   osw.flush();
			 
			   //응답
			   BufferedReader br = null;
			   br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			   String line = null;
			   while ((line = br.readLine()) != null) {
			    System.out.println(line);
			   }
			 
			   //닫기
			   osw.close();
			   br.close();
			   } catch (MalformedURLException e) {
			    e.printStackTrace();
			   } catch (ProtocolException e) {
			    e.printStackTrace();
			   } catch (UnsupportedEncodingException e) {
			    e.printStackTrace();
			   } catch (IOException e) {
			    e.printStackTrace();
			   } 
			  
			 
		
	}

}
