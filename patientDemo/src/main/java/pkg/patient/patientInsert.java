package pkg.patient;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class patientInsert
 */
@WebServlet("/patientInsert")
public class patientInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String telphone=request.getParameter("telephone");
		String email=request.getParameter("email");
		String username=request.getParameter("uname");
		String password=request.getParameter("password");
		
		boolean isTrue;
		
		isTrue=patientDButil.insertcustomer(fname, lname, telphone, email, username, password);
	    if(isTrue==true) {
	    	RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
	    	dis.forward(request, response);
	    }else {
	    	RequestDispatcher dis2=request.getRequestDispatcher("unsuccesss.jsp");
	    	dis2.forward(request,response);
	    }
	}

}
