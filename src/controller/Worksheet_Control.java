package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service;

@WebServlet("/Worksheet_Control")
public class Worksheet_Control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Worksheet_Control() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("userid");
		String orderid = request.getParameter("orderid");
		Service service = new Service();
		response.setContentType("text/xml;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(userid != null){
			StringBuffer result = service.Read_My_Worksheet(userid);
			out.write(result.toString());
		}
		else{
			StringBuffer result = service.Find_Worksheet(orderid);
			out.write(result.toString());
		}
			
		out.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String orderid = request.getParameter("orderid");
		String product = request.getParameter("product");
		String model = request.getParameter("model");
		String host = request.getParameter("host");
		String three = request.getParameter("three");
		String hardware = request.getParameter("hardware");
		String phenomenon = request.getParameter("phenomenon");
		String description = request.getParameter("description");
		String clientid = request.getParameter("clientid");
		String userid = request.getParameter("userid");
		Service service = new Service();
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain;charset=UTF-8");
		if(service.New_Worksheet(orderid, product, host, three, hardware, model, phenomenon, description,
				clientid,userid))
			out.write("true");
		else
			out.write("false");
		out.close();
		
	}

}
