package dao;

import java.sql.*;


public class Datadao {
	public String sql;
	
	public String url="jdbc:mysql://localhost:3306/dellssh?useUnicode=true&characterEncoding=GBK";
    public String username = "root";
    public String password = "7827";
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	public String Login(String user, String psw){
		try{
			 Class.forName("com.mysql.jdbc.Driver");	     
		     Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "SELECT * FROM loginuser WHERE username = \""+user+"\" AND password = \""+psw+"\" AND status=1";
		     //System.out.println(sql);
		     String ans = "";
		     ResultSet rs = stmt.executeQuery(sql);
		     while(rs.next()){
		    	 ans = "type = "+rs.getInt("type");
		    	 /*ans += ",userid = " + rs.getInt("userid");*/
		     }
		     rs.close();
	         stmt.close();
	         conn.close();
	        // System.out.println(ans);
	         return ans;
		}catch(SQLException se){
	         se.printStackTrace();
	      }catch(Exception e){
	         e.printStackTrace();
	      }
		return null;
	}
	
	public StringBuffer Read_Engi_Level(){
		try{
			 Class.forName("com.mysql.jdbc.Driver");	     
		     Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "SELECT * FROM loginuser,pub_engineer_grade,engineer"
		    		 + " WHERE eng_level_id=systemid AND engineerid=userid";
		     //System.out.println(sql);
		     ResultSet rs = stmt.executeQuery(sql);
		     StringBuffer stringBuffer = new StringBuffer();
		     stringBuffer.append("<EngineerLevel>");
		     while(rs.next()){
		    	 stringBuffer.append("<Engineer>");
		    	 stringBuffer.append("<name>");
		    	 stringBuffer.append(rs.getString("realname"));
		    	 stringBuffer.append("</name><dellno>");
		    	 stringBuffer.append(rs.getString("dellno")+"</dellno>");
		    	 stringBuffer.append("<level>"+rs.getString("name")+"</level>");
		    	 stringBuffer.append("<id>"+rs.getInt("systemid")+"</id>");
		    	 stringBuffer.append("</Engineer>");
		     }
		     stringBuffer.append("</EngineerLevel>");
		     rs.close();
	         stmt.close();
	         conn.close();
	        // System.out.println(ans);
	         return stringBuffer;
		}catch(SQLException se){
	         se.printStackTrace();
	      }catch(Exception e){
	         e.printStackTrace();
	      }
		return null;
	}
	
	public boolean Write_Engi_Level(String id,String level){
		try{
			 Class.forName("com.mysql.jdbc.Driver");	     
		     Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "UPDATE pub_engineer_grade SET name=\"" + level 
		    		 +"\" WHERE systemid=" + id;
		     //System.out.println(sql);
		     int row = stmt.executeUpdate(sql);
		     if(row == 1){
		    	 stmt.close();
		         conn.close();
		         return true;
		     } 	 
		     else{
		    	 stmt.close();
		    	 conn.close();
		    	 return false;
		     }
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
	
	public boolean New_Stuff(String new_username,String psw,String realname,String dellno,String tele){
		try{
			 Class.forName("com.mysql.jdbc.Driver");	     
		     Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "INSERT INTO loginuser VALUES(null,\""+ new_username + "\",\"" + psw 
		    		 + "\",\"" + realname + "\",\""+ dellno + "\",2,\"" + new Date(0) + "\",1,\"" 
		    		 + tele +"\")"; 
		     //System.out.println(sql);
		     int row = stmt.executeUpdate(sql);
		     if(row == 1){
		    	 stmt.close();
		         conn.close();
		         return true;
		     } 	 
		     else{
		    	 stmt.close();
		    	 conn.close();
		    	 return false;
		     }
		     
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
}
	public boolean New_Engineer(String new_username,String psw,String realname,String dellno,String tele,
			String level,String version){
		try{
			 Class.forName("com.mysql.jdbc.Driver");	     
		     Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "INSERT INTO loginuser VALUES(null,\""+ new_username + "\",\"" + psw 
		    		 + "\",\"" + realname + "\",\""+ dellno + "\",1,\"" + new Date(0) + "\",1,\"" 
		    		 + tele +"\")"; 
		     //System.out.println(sql);
		     int row = stmt.executeUpdate(sql);
		     if(row != 1)
		    	 return false;
		     sql = "SELECT * FROM loginuser ORDER BY userid DESC LIMIT 1";
		     ResultSet rs = stmt.executeQuery(sql);
		     String id = "";
		     String level_id = "";
		     String app_id = "";
		     while(rs.next())
		    	 id = rs.getString("userid");
		     sql = "INSERT INTO pub_app_version VALUES (null,1,\"" + version + "\")";
		     //System.out.println(sql);
		     row = stmt.executeUpdate(sql);
		     if(row != 1)
		    	 return false;
		     sql = "INSERT INTO pub_engineer_grade VALUES(null,1,\"" + level +"\")";
		     row = stmt.executeUpdate(sql);
		     if(row != 1)
		    	 return false;
		     sql = "SELECT * FROM pub_app_version ORDER BY systemid DESC LIMIT 1";
		     rs = stmt.executeQuery(sql);
		     while(rs.next())
		    	 app_id = rs.getString("systemid");
		     sql = "SELECT * FROM pub_engineer_grade ORDER BY systemid DESC LIMIT 1";
		     rs = stmt.executeQuery(sql);
		     while(rs.next())
		    	 level_id = rs.getString("systemid");
		     sql = "INSERT INTO engineer VALUES(" + id + "," + level_id + "," + app_id + ")";
		     row = stmt.executeUpdate(sql);
		     if(row == 1){
		    	 stmt.close();
		         conn.close();
		         return true;
		     } 	 
		     else{
		    	 stmt.close();
		    	 conn.close();
		    	 return false;
		     }
		     
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
	public boolean New_Customer(String name,String region,String postcode,String contactor,
			String fax,String city,String tele){
		try{
			 Class.forName("com.mysql.jdbc.Driver");	     
		     Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "INSERT INTO customer VALUES(null,\"" + name + "\",\""
		     		+ region + "\",\"" + postcode + "\",\"" + contactor + "\",\""
		     		+ fax + "\",\"" + city + "\",\"" + tele + "\")";
		     int row = stmt.executeUpdate(sql);
		     if(row == 1){
		    	 stmt.close();
		         conn.close();
		         return true;
		     } 	 
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
	public StringBuffer Find_All_Client(){
		try{
			 Class.forName("com.mysql.jdbc.Driver");	  
			 //String url="jdbc:mysql://localhost:3306/dellssh?useUnicode=true&characterEncoding=utf-8";
		     Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "SELECT * FROM customer";
		     StringBuffer stringBuffer = new StringBuffer();
		     ResultSet rs = stmt.executeQuery(sql);
		     stringBuffer.append("<All_Client>");
		     while(rs.next()){
		    	 stringBuffer.append("<client>");
		    	 stringBuffer.append("<name>" + rs.getString("name") + "</name>");
		    	 stringBuffer.append("<region>" + rs.getString("region") + "</region>");
		    	 if(rs.getString("postcode").equals(""))
		    		 stringBuffer.append("<postcode>无</postcode>");
		    	 else
		    		 stringBuffer.append("<postcode>" + rs.getString("postcode") + "</postcode>");
		    	 stringBuffer.append("<contactor>" + rs.getString("contactor") + "</contactor>");
		    	 if(rs.getString("fax").equals(""))
		    		 stringBuffer.append("<fax>无</fax>");
		    	 else
		    		 stringBuffer.append("<fax>" + rs.getString("fax")+ "</fax>");
		    	 if(rs.getString("city").equals(""))
		    		 stringBuffer.append("<city>无</city>");
		    	 else
		    		 stringBuffer.append("<city>" + rs.getString("city") + "</city>");
		    	 if(rs.getString("telephone").equals(""))
		    		 stringBuffer.append("<tele>无</tele>");
		    	 else
		    		 stringBuffer.append("<tele>" + rs.getString("telephone") + "</tele>");
		    	 stringBuffer.append("</client>");
		     }
		     stringBuffer.append("</All_Client>");
		     rs.close();
		     conn.close();
		     stmt.close();
		     return stringBuffer;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return null;
	}
	public StringBuffer Find_Client_By_Name(String name){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     StringBuffer stringBuffer = new StringBuffer();
		     sql = "SELECT * FROM customer WHERE name=\"" + name + "\"";
		     ResultSet rs = stmt.executeQuery(sql);
		     stringBuffer.append("<Client_By_Name>");
		     while(rs.next()){
		    	 stringBuffer.append("<client>");
		    	 stringBuffer.append("<id>" + rs.getString("customerid") + "</id>");
		    	 stringBuffer.append("<name>" + rs.getString("name") + "</name>");
		    	 stringBuffer.append("<region>" + rs.getString("region") + "</region>");
		    	 if(rs.getString("postcode").equals(""))
		    		 stringBuffer.append("<postcode>无</postcode>");
		    	 else
		    		 stringBuffer.append("<postcode>" + rs.getString("postcode") + "</postcode>");
		    	 stringBuffer.append("<contactor>" + rs.getString("contactor") + "</contactor>");
		    	 if(rs.getString("fax").equals(""))
		    		 stringBuffer.append("<fax>无</fax>");
		    	 else
		    		 stringBuffer.append("<fax>" + rs.getString("fax")+ "</fax>");
		    	 if(rs.getString("city").equals(""))
		    		 stringBuffer.append("<city>无</city>");
		    	 else
		    		 stringBuffer.append("<city>" + rs.getString("city") + "</city>");
		    	 if(rs.getString("telephone").equals(""))
		    		 stringBuffer.append("<tele>无</tele>");
		    	 else
		    		 stringBuffer.append("<tele>" + rs.getString("telephone") + "</tele>");
		    	 stringBuffer.append("</client>");
		     }
		     stringBuffer.append("</Client_By_Name>");
		     rs.close();
		     conn.close();
		     stmt.close();
		     return stringBuffer;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return null;
	}
	public StringBuffer Find_All_Stuff(){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     StringBuffer stringBuffer = new StringBuffer();
		     sql = "SELECT * FROM loginuser WHERE type=2";
		     ResultSet rs = stmt.executeQuery(sql);
		     stringBuffer.append("<All_Stuff>");
		     while(rs.next()){
		    	 stringBuffer.append("<Stuff>");
		    	 stringBuffer.append("<id>" + rs.getInt("userid") + "</id>");
		    	 stringBuffer.append("<username>" + rs.getString("username") + "</username>");
		    	 stringBuffer.append("<psw>" + rs.getString("password") + "</psw>");
		    	 stringBuffer.append("<realname>" + rs.getString("realname") + "</realname>");
		    	 stringBuffer.append("<dellno>" + rs.getString("dellno") + "</dellno>");
		    	 stringBuffer.append("<addtime>" + rs.getDate("addtime") + "</addtime>");
		    	 if(rs.getInt("status") == 1)
		    		 stringBuffer.append("<status>已激活</status>");
		    	 else
		    		 stringBuffer.append("<status>已冻结</status>");
		    	 if(rs.getString("telephone") == null)
		    		 stringBuffer.append("<tele>无</tele>");
		    	 else
		    		 stringBuffer.append("<tele>" + rs.getString("telephone") + "</tele>");
		    	 stringBuffer.append("</Stuff>");
		     }
		     stringBuffer.append("</All_Stuff>");
		     rs.close();
		     conn.close();
		     stmt.close();
		     return stringBuffer;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return null;
	}
	public StringBuffer Find_Stuff_By(String realname,String dellno){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     StringBuffer stringBuffer = new StringBuffer();
		     sql = "SELECT * FROM loginuser WHERE type=2 ";
		     if(realname != null && !realname.equals(""))
		    	 sql += "AND realname=\"" + realname + "\"";
		     if(dellno != null && !dellno.equals(""))
		    	 sql += "AND dellno=\"" + dellno + "\"";
		     ResultSet rs = stmt.executeQuery(sql);
		     stringBuffer.append("<All_Stuff>");
		     while(rs.next()){
		    	 stringBuffer.append("<Stuff>");
		    	 stringBuffer.append("<id>" + rs.getInt("userid") + "</id>");
		    	 stringBuffer.append("<username>" + rs.getString("username") + "</username>");
		    	 stringBuffer.append("<psw>" + rs.getString("password") + "</psw>");
		    	 stringBuffer.append("<realname>" + rs.getString("realname") + "</realname>");
		    	 stringBuffer.append("<dellno>" + rs.getString("dellno") + "</dellno>");
		    	 stringBuffer.append("<addtime>" + rs.getDate("addtime") + "</addtime>");
		    	 if(rs.getInt("status") == 1)
		    		 stringBuffer.append("<status>已激活</status>");
		    	 else
		    		 stringBuffer.append("<status>已冻结</status>");
		    	 if(rs.getString("telephone") == null)
		    		 stringBuffer.append("<tele>无</tele>");
		    	 else
		    		 stringBuffer.append("<tele>" + rs.getString("telephone") + "</tele>");
		    	 stringBuffer.append("</Stuff>");
		     }
		     stringBuffer.append("</All_Stuff>");
		     rs.close();
		     conn.close();
		     stmt.close();
		     return stringBuffer;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return null;
	}
	public boolean Change_Stuff_Status(String userid){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "SELECT * FROM loginuser WHERE userid =\"" + userid + "\"";
		     ResultSet rs = stmt.executeQuery(sql);
		     while(rs.next()){
		    	 int type = rs.getInt("status");
		    	 if(type == 1)
		    		 sql = "UPDATE loginuser SET status = 0 WHERE userid = \""
		    				 + userid + "\"";
		    	 else
		    		 sql = "UPDATE loginuser SET status = 1 WHERE userid = \""
		    		 		+ userid + "\"";
		     }
		     int row = stmt.executeUpdate(sql);
		     rs.close();
		     conn.close();
		     stmt.close();
	    	 if(row == 1)
	    		 return true;
	    	 else
	    		 return false;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
	
	public boolean New_Worksheet(String orderid,String product,String host,String three,String hardware,
			String model,String phenomenon,String description,String clientid,String userid){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "SELECT * FROM worksheet WHERE sheetno=\"" + orderid + "\"";
		     
		     ResultSet rs = stmt.executeQuery(sql);
		     if(rs.next()){
		    	 sql = "UPDATE worksheet SET productname=\"" + product + "\",dellmodel=\""
		    			 + model + "\",hostnumber=\"" + host + "\",threeguaranteestag="
		    			 + three + ",harddiskrestricttag=" + hardware + ",customfailphenomenon=\""
		    			 + phenomenon + "\",customfaildescription=\"" + description + "\""
		    			 + "WHERE sheetno=\"" + orderid + "\"";
		    	 int row = stmt.executeUpdate(sql);
			     conn.close();
			     stmt.close();
			     if(row == 1)
		    		 return true;
		    	 else
		    		 return false;
		     }
		     else{
		    	 sql = "INSERT INTO worksheet VALUES(null" + "," + orderid + ",\"" + product + "\",\""
			    		 + model + "\",\"" + host + "\",\"" + new Date(0) + "\",null," + three + ","
			    		 + hardware + ",\"" + phenomenon + "\",\"" + description + "\",1," + 
			    		 clientid + "," + userid + ")";
			     int row = stmt.executeUpdate(sql);
			     conn.close();
			     stmt.close();
			     if(row == 1)
		    		 return true;
		    	 else
		    		 return false;
		     }
 		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
	public StringBuffer Read_My_Worksheet(String userid){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     StringBuffer stringBuffer = new StringBuffer();
		     sql = "SELECT * FROM worksheet,pub_work_sheet_status WHERE userid=" + userid
		    		 + " AND worksheet.systemid=code";
		     ResultSet rs = stmt.executeQuery(sql);
		     stringBuffer.append("<All_Worksheet>");
		     while(rs.next()){
		    	 stringBuffer.append("<worksheet>");
		    	 stringBuffer.append("<orderid>" + rs.getString("sheetno") + "</orderid>");
		    	 stringBuffer.append("<product>" + rs.getString("productname") + "</product>");
		    	 stringBuffer.append("<model>" + rs.getString("dellmodel") + "</model>");
		    	 stringBuffer.append("<host>" + rs.getString("hostnumber") + "</host>");
		    	 stringBuffer.append("<date>" + rs.getDate("createdate") + "</date>");
		    	 stringBuffer.append("<dispatch>" + rs.getDate("dispatchdate") + "</dispatch>");
		    	 stringBuffer.append("<three>" + rs.getInt("threeguaranteestag") + "</three>");
		    	 stringBuffer.append("<hard>" + rs.getInt("harddiskrestricttag") + "</hard>");
		    	 stringBuffer.append("<phenonmenon>" + rs.getString("customfailphenomenon") + "</phenonmenon>");
		    	 stringBuffer.append("<description>" + rs.getString("customfaildescription") + "</description>");
		    	 stringBuffer.append("<status>" + rs.getString("name") + "</status>");
		    	 int clientid = rs.getInt("customerid");
		    	 sql = "SELECT * FROM customer WHERE customerid=" + clientid;
		    	 Statement stmtn = conn.createStatement();
		    	 ResultSet rsn = stmtn.executeQuery(sql);
		    	 while(rsn.next()){
		    		 stringBuffer.append("<name>" + rsn.getString("name") + "</name>");
		    		 stringBuffer.append("<tele>" + rsn.getString("telephone") + "</tele>");
		    	 }
		    	 stringBuffer.append("</worksheet>");
		    	 rsn.close();
		    	 stmtn.close();
		     }
		     stringBuffer.append("</All_Worksheet>");
		     rs.close();
		     conn.close();
		     stmt.close();
		     return stringBuffer;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return null;
	}
	public StringBuffer Find_Worksheet(String orderid){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     StringBuffer stringBuffer = new StringBuffer();
		     sql = "SELECT * FROM worksheet WHERE sheetno=" + orderid;
		     ResultSet rs = stmt.executeQuery(sql);
		     if(rs.next()){
		    	 stringBuffer.append("<worksheet>");
		    	 stringBuffer.append("<orderid>" + rs.getString("sheetno") + "</orderid>");
		    	 stringBuffer.append("<product>" + rs.getString("productname") + "</product>");
		    	 stringBuffer.append("<model>" + rs.getString("dellmodel") + "</model>");
		    	 stringBuffer.append("<host>" + rs.getString("hostnumber") + "</host>");
		    	 stringBuffer.append("<date>" + rs.getDate("createdate") + "</date>");
		    	 stringBuffer.append("<dispatch>" + rs.getDate("dispatchdate") + "</dispatch>");
		    	 stringBuffer.append("<three>" + rs.getInt("threeguaranteestag") + "</three>");
		    	 stringBuffer.append("<hard>" + rs.getInt("harddiskrestricttag") + "</hard>");
		    	 stringBuffer.append("<phenonmenon>" + rs.getString("customfailphenomenon") + "</phenonmenon>");
		    	 stringBuffer.append("<description>" + rs.getString("customfaildescription") + "</description>");
		    	 stringBuffer.append("</worksheet>");
		     }
		     rs.close();
		     conn.close();
		     stmt.close();
		     return stringBuffer;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return null;
	}
	public StringBuffer Read_All_Worksheet(){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     StringBuffer stringBuffer = new StringBuffer();
		     sql = "SELECT * FROM worksheet,pub_work_sheet_status WHERE worksheet.systemid=code";
		     ResultSet rs = stmt.executeQuery(sql);
		     stringBuffer.append("<All_Worksheet>");
		     while(rs.next()){
		    	 stringBuffer.append("<worksheet>");
		    	 stringBuffer.append("<orderid>" + rs.getString("sheetno") + "</orderid>");
		    	 stringBuffer.append("<product>" + rs.getString("productname") + "</product>");
		    	 stringBuffer.append("<model>" + rs.getString("dellmodel") + "</model>");
		    	 stringBuffer.append("<host>" + rs.getString("hostnumber") + "</host>");
		    	 stringBuffer.append("<date>" + rs.getDate("createdate") + "</date>");
		    	 if(rs.getString("dispatchdate") == null)
		    		 stringBuffer.append("<dispatch>未派单</dispatch>");
		    	 else
		    		 stringBuffer.append("<dispatch>" + rs.getDate("dispatchdate") + "</dispatch>");
		    	 if(rs.getInt("threeguaranteestag") == 1)
		    		 stringBuffer.append("<three>是</three>");
		    	 else
		    		 stringBuffer.append("<three>否</three>");
		    	 if(rs.getInt("harddiskrestricttag") == 1)
		    		 stringBuffer.append("<hard>是</hard>");
		    	 else
		    		 stringBuffer.append("<hard>否</hard>");

		    	 stringBuffer.append("<phenonmenon>" + rs.getString("customfailphenomenon") + "</phenonmenon>");
		    	 stringBuffer.append("<description>" + rs.getString("customfaildescription") + "</description>");
		    	 stringBuffer.append("<status>" + rs.getString("name") + "</status>");
		    	 int clientid = rs.getInt("customerid");
		    	 sql = "SELECT * FROM customer WHERE customerid=" + clientid;
		    	 Statement stmtn = conn.createStatement();
		    	 ResultSet rsn = stmtn.executeQuery(sql);
		    	 while(rsn.next()){
		    		 stringBuffer.append("<name>" + rsn.getString("name") + "</name>");
		    		 stringBuffer.append("<tele>" + rsn.getString("telephone") + "</tele>");
		    	 }
		    	 stringBuffer.append("</worksheet>");
		    	 rsn.close();
		    	 stmtn.close();
		     }
		     stringBuffer.append("</All_Worksheet>");
		     rs.close();
		     conn.close();
		     stmt.close();
		     return stringBuffer;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return null;
	}
	public boolean Cancel_Worksheet(String orderid){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "UPDATE worksheet SET systemid=6 WHERE sheetno=\"" + orderid + "\"";
		     int row = stmt.executeUpdate(sql);
		     conn.close();
		     stmt.close();
		     if(row == 1)
	    		 return true;
	    	 else
	    		 return false;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
	////////////////////////
	public StringBuffer Find_Service(){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "SELECT * FROM service,loginuser,pub_book_status WHERE enginerrid=userid "
		     		+ "AND service.systemid=code";
		     ResultSet rs = stmt.executeQuery(sql);
		     StringBuffer stringBuffer = new StringBuffer();
		     stringBuffer.append("<All_Service>");
		     while(rs.next()){
		    	 stringBuffer.append("<service>");
		    	 stringBuffer.append("<sheetid>" + rs.getString("sheetid") + "</sheetid>");
		    	 stringBuffer.append("<enginame>" + rs.getString("realname") + "</enginame>");
		    	 stringBuffer.append("<status>" + rs.getString("name") + "</status>");
		    	 stringBuffer.append("<firstcall>" + rs.getDate("first_call_date") + "</firstcall>");
		    	 stringBuffer.append("<bookdate>" + rs.getDate("book_onsite_date") + "</bookdate>");
		    	 stringBuffer.append("<startdate>" + rs.getDate("eng_way_startdate") + "</startdate>");
		    	 stringBuffer.append("<arrivedate>" + rs.getDate("eng_way_arrivedate") + "</arrivedate>");
		    	 stringBuffer.append("<location>" + rs.getString("location_info") + "</location>");
		    	 stringBuffer.append("<checkitems>" + rs.getString("check_items") + "</checkitems>");
		    	 stringBuffer.append("<checkstep>" + rs.getString("check_step") + "</checkstep>");
		    	 stringBuffer.append("<solutions>" + rs.getString("solutions") + "</solutions>");
		    	 stringBuffer.append("<harddate>" + rs.getDate("harddisk_rebuild_date") + "</harddate>");
		    	 stringBuffer.append("<hardresult>" + rs.getString("harddisk_rebuild_result") + "</hardresult>");
		    	 stringBuffer.append("<nextdate>" + rs.getDate("pre_next_onsite_date") + "</nextdate>");
		    	 stringBuffer.append("<nexttip>" + rs.getString("next_service_tip") + "</nexttip>");
		    	 stringBuffer.append("<enddate>" + rs.getDate("service_end_date") + "</enddate>");
		    	 stringBuffer.append("<memo>" + rs.getString("book_memo") + "</memo>");
		    	 stringBuffer.append("<score>" + rs.getInt("satisfaction_score") + "</score>");
		    	 stringBuffer.append("<comment>" + rs.getString("comment") + "</comment>");
		    	 stringBuffer.append("</service>");
		     }
		     stringBuffer.append("</All_Service>");
		     rs.close();
		     conn.close();
		     stmt.close();
		     return stringBuffer;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return null;
	}
	//////////////////////
	public StringBuffer Read_Engi(){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "SELECT * FROM loginuser,engineer,pub_engineer_grade WHERE engineerId=userid"
		     		+ " AND eng_level_id = systemid";
		     ResultSet rs = stmt.executeQuery(sql);
		     StringBuffer stringBuffer = new StringBuffer();
		     stringBuffer.append("<All_Engineer>");
		     while(rs.next()){
		    	 stringBuffer.append("<engineer>");
		    	 stringBuffer.append("<id>" + rs.getInt("userid") + "</id>");
		    	 stringBuffer.append("<name>" + rs.getString("realname") + "</name>");
		    	 stringBuffer.append("<dellno>" + rs.getString("dellno") + "</dellno>");
		    	 if(rs.getString("telephone") != null)
		    		 stringBuffer.append("<tele>" + rs.getString("telephone") + "</tele>");
		    	 else
		    		 stringBuffer.append("<tele>无</tele>");
		    	 stringBuffer.append("<level>" + rs.getString("name") + "</level>");
		    	 stringBuffer.append("</engineer>");
		     }
		     stringBuffer.append("</All_Engineer>");
		     rs.close();
		     conn.close();
		     stmt.close();
		     return stringBuffer;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return null;
	}
	public boolean New_Service(String orderid,String engiid){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "UPDATE worksheet SET systemid=2 WHERE sheetno=" + orderid;
		     int row = stmt.executeUpdate(sql);
		     if(row != 1)
	    		 return false;
		     sql = "INSERT INTO service VALUES(null,\"" + orderid + "\"," + engiid + ",9001,null,"
		     		+ "null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null)";
		     System.out.println(sql);
		     row = stmt.executeUpdate(sql);
		     if(row != 1){
		    	 sql = "UPDATE worksheet SET systemid=1 WHERE sheetno=" + orderid;
		    	 Statement stmtn = conn.createStatement();
		    	 row = stmtn.executeUpdate(sql);
		    	 return false;
		     }
		    	
		     conn.close();
		     stmt.close();
		     return true;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
	public StringBuffer Find_WorksheetDetail(String orderid){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     StringBuffer stringBuffer = new StringBuffer();
		     sql = "SELECT * FROM worksheet,pub_work_sheet_status WHERE sheetno=" + orderid
		    		 + " AND worksheet.systemid=code";
		     ResultSet rs = stmt.executeQuery(sql);
		     stringBuffer.append("<All_Worksheet>");
		     while(rs.next()){
		    	 stringBuffer.append("<worksheet>");
		    	 stringBuffer.append("<orderid>" + rs.getString("sheetno") + "</orderid>");
		    	 stringBuffer.append("<product>" + rs.getString("productname") + "</product>");
		    	 stringBuffer.append("<model>" + rs.getString("dellmodel") + "</model>");
		    	 stringBuffer.append("<host>" + rs.getString("hostnumber") + "</host>");
		    	 stringBuffer.append("<date>" + rs.getDate("createdate") + "</date>");
		    	 if(rs.getString("dispatchdate") == null)
		    		 stringBuffer.append("<dispatch>未派单</dispatch>");
		    	 else
		    		 stringBuffer.append("<dispatch>" + rs.getDate("dispatchdate") + "</dispatch>");
		    	 if(rs.getInt("threeguaranteestag") == 1)
		    		 stringBuffer.append("<three>是</three>");
		    	 else
		    		 stringBuffer.append("<three>否</three>");
		    	 if(rs.getInt("harddiskrestricttag") == 1)
		    		 stringBuffer.append("<hard>是</hard>");
		    	 else
		    		 stringBuffer.append("<hard>否</hard>");
		    	 stringBuffer.append("<phenonmenon>" + rs.getString("customfailphenomenon") + "</phenonmenon>");
		    	 stringBuffer.append("<description>" + rs.getString("customfaildescription") + "</description>");
		    	 stringBuffer.append("<status>" + rs.getString("name") + "</status>");
		    	 int clientid = rs.getInt("customerid");
		    	 sql = "SELECT * FROM customer WHERE customerid=" + clientid;
		    	 Statement stmtn = conn.createStatement();
		    	 ResultSet rsn = stmtn.executeQuery(sql);
		    	 while(rsn.next()){
		    		 stringBuffer.append("<name>" + rsn.getString("name") + "</name>");
		    		 stringBuffer.append("<tele>" + rsn.getString("telephone") + "</tele>");
		    	 }
		    	 stringBuffer.append("</worksheet>");
		    	 rsn.close();
		    	 stmtn.close();
		     }
		     stringBuffer.append("</All_Worksheet>");
		     rs.close();
		     conn.close();
		     stmt.close();
		     return stringBuffer;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return null;
	}
	public boolean Update_Log_psw(String user,String oldpsw,String newpsw1){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn = DriverManager.getConnection(url,username,password);
		     Statement stmt = conn.createStatement();
		     sql = "SELECT * FROM loginuser WHERE username = \""+user+"\" AND password = \""+oldpsw+"\" ";
		    /* String ans = "";*/		     
		     ResultSet rs = stmt.executeQuery(sql);
		     while(rs.next()){
		    	/* ans = "type = "+rs.getInt("type");*/
		    	
		    		 sql = "UPDATE loginuser SET password = \""+ newpsw1 + "\" WHERE username = \""
		    				 + user + "\" AND password = \""+oldpsw+"\"";
		     }
		     int row = stmt.executeUpdate(sql);
		     rs.close();
		     conn.close();
		     stmt.close();
	    	 if(row == 1)
	    		 return true;
	    	 else
	    		 return false;
		}catch(SQLException se){
		    se.printStackTrace();
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
}
}
