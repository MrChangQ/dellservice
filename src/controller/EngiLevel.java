package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service;

@WebServlet("/EngiLevel")
public class EngiLevel extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EngiLevel() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Service service = new Service();
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer = service.Read_Engi_Level();
		String result = stringBuffer.toString();
		response.setContentType("text/xml;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.write(result);
		out.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String level = request.getParameter("level");
		Service service = new Service();
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(service.Write_Engi_Level(id, level))
			out.write("true");
		else
			out.write("false");
		out.close();
	}

}
