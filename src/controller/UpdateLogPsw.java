package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service;

/**
 * Servlet implementation class UpdateLogPsw
 */
@WebServlet("/UpdateLogPsw")
public class UpdateLogPsw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateLogPsw() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String user = request.getParameter("user");
		String oldpsw = request.getParameter("oldpsw");
		String newpsw1 = request.getParameter("newpsw1");
		System.out.println(user);
		System.out.println(oldpsw);
		System.out.print(newpsw1);
		Service service = new Service();
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(service.Update_Log_Psw(user, oldpsw, newpsw1))
			out.write("true");
		else
			out.write("false");
		out.close();

}
}
