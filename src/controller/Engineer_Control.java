package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service;


@WebServlet("/Engineer_Control")
public class Engineer_Control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Engineer_Control() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String orderid = request.getParameter("orderid");
		String engiid = request.getParameter("engiid");
		Service service = new Service();
		if(orderid == null){
			response.setContentType("text/xml;charset=UTF-8");
			PrintWriter out = response.getWriter();
			StringBuffer result = service.Read_Engi();
			out.write(result.toString());
			out.close();
		}
		else{
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out = response.getWriter();
			if(service.New_Service(orderid, engiid))
				out.write("true");
			else
				out.write("false");
			out.close();
		}
				
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String new_username = request.getParameter("username");
		String psw = request.getParameter("psw");
		String realname = request.getParameter("realname");
		String dellno = request.getParameter("dellno");
		String tele = request.getParameter("tele");
		String level = request.getParameter("level");
		String version = request.getParameter("version");
		Service service = new Service();
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain;charset=UTF-8");
		if(service.New_Engineer(new_username, psw, realname, dellno, tele, level, version))
			out.write("true");
		else
			out.write("false");
		out.close();
	}

}
