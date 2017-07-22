package service;

import dao.Datadao;

public class Service {
	public Datadao d = new Datadao();
	public String Login(String user, String psw){
		return d.Login(user, psw);	
	}
	public StringBuffer Read_Engi_Level(){
		return d.Read_Engi_Level();
	}
	public boolean Write_Engi_Level(String id,String level){
		return d.Write_Engi_Level(id, level);
	}
	public boolean New_Stuff(String username,String psw,String realname,String dellno,String tele){
		return d.New_Stuff(username, psw, realname, dellno, tele);
	}
	public boolean New_Engineer(String new_username,String psw,String realname,String dellno,String tele,
			String level,String version){
		return d.New_Engineer(new_username, psw, realname, dellno, tele, level, version);
	}
	public boolean New_Client(String name,String region,String postcode,String contactor,
			String fax,String city,String tele){
		return d.New_Customer(name, region, postcode, contactor, fax, city, tele);
	}
	public StringBuffer Find_All_Client(){
		return d.Find_All_Client();
	}
	public StringBuffer Find_Client_By_Name(String name){
		return d.Find_Client_By_Name(name);
	}
	public StringBuffer Find_All_Stuff(){
		return d.Find_All_Stuff();
	}
	public StringBuffer Find_Stuff_By(String realname,String dellno){
		return d.Find_Stuff_By(realname, dellno);
	}
	public boolean Change_Stuff_Status(String userid){
		return d.Change_Stuff_Status(userid);
	}
	public boolean New_Worksheet(String orderid,String product,String host,String three,String hardware,
			String model,String phenomenon,String description,String clientid,String userid){
		return d.New_Worksheet(orderid, product, host, three, hardware, model, phenomenon, description
				,clientid,userid);
	}
	public StringBuffer Read_My_Worksheet(String userid){
		return d.Read_My_Worksheet(userid);
	}
	
	public StringBuffer Find_Worksheet(String orderid){
		return d.Find_Worksheet(orderid);
	}
	public StringBuffer Read_All_Worksheet(){
		return d.Read_All_Worksheet();
	}
	public boolean Cancel_Worksheet(String orderid){
		return d.Cancel_Worksheet(orderid);
	}
	public StringBuffer Read_Engi(){
		return d.Read_Engi();
	}
	public boolean New_Service(String orderid,String engiid){
		return d.New_Service(orderid, engiid);
	}
	public StringBuffer Find_Service(){
		return d.Find_Service();
	}
	public StringBuffer Find_WorksheetDetail(String orderid){
		return d.Find_WorksheetDetail(orderid);
	}
	public boolean Update_Log_Psw(String user,String oldpsw,String newpsw1){
		return d.Update_Log_psw(user,oldpsw,newpsw1);
	}
}
