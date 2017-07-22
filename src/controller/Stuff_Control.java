package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service;

@WebServlet("/Stuff_Control")
public class Stuff_Control extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Stuff_Control() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("username");
		String dellno = request.getParameter("dellno");
		String userid = request.getParameter("userid");
		Service service = new Service();
		if(name == null && dellno == null && userid == null){
			StringBuffer stringBuffer = new StringBuffer();
			stringBuffer = service.Find_All_Stuff();
			String result = stringBuffer.toString();
			response.setContentType("text/xml;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.write(result);
			out.close();
		}
		else if(userid == null){
			StringBuffer stringBuffer = new StringBuffer();
			stringBuffer = service.Find_Stuff_By(name, dellno);
			String result = stringBuffer.toString();
			response.setContentType("text/xml;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.write(result);
			out.close();
		}
		else{
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out = response.getWriter();
			if(service.Change_Stuff_Status(userid))
				out.write("true");
			else
				out.write("false");
			out.close();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String psw = request.getParameter("psw");
		String realname = request.getParameter("realname");
		String dellno = request.getParameter("dellno");
		String tele = request.getParameter("tele");
		Service service = new Service();
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain;charset=UTF-8");
		if(service.New_Stuff(username, psw, realname, dellno, tele))
			out.write("true");
		else
			out.write("false");
		out.close();
	}

}
