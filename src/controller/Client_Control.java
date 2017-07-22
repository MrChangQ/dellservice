package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service;

@WebServlet("/Client_Control")
public class Client_Control extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Client_Control() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = "";
		name = request.getParameter("client_name");
		Service service = new Service();
		if(name == null){
			StringBuffer stringBuffer = new StringBuffer();
			stringBuffer = service.Find_All_Client();
			String result = stringBuffer.toString();
			response.setContentType("text/xml;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.write(result);
			out.close();
		}
		else{
			StringBuffer stringBuffer = new StringBuffer();
			stringBuffer = service.Find_Client_By_Name(name);
			String result = stringBuffer.toString();
			response.setContentType("text/xml;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.write(result);
			out.close();
		}
			
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String region = request.getParameter("region");
		String city = request.getParameter("city");
		String postcode = request.getParameter("postcode");
		String contactor = request.getParameter("contactor");
		String tele = request.getParameter("tele");
		String fax = request.getParameter("fax");
		Service service = new Service();
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain;charset=UTF-8");
		if(service.New_Client(name, region, postcode, contactor, fax, city, tele))
			out.write("true");
		else
			out.write("false");
		out.close();
	}

}
