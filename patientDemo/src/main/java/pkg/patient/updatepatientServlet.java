package pkg.patient;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updatepatientServlet
 */
@WebServlet("/updatepatientServlet")
public class updatepatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("cusId");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String telephone=request.getParameter("telephone");
		String email=request.getParameter("email");
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
	boolean isTrue;
	isTrue =patientDButil.updatepatient(id, fname, lname,telephone,email,userName,password);
	
	if(isTrue==true) {
		
		List<patient> pDetails=patientDButil.getpatientDeatails(id);
		request.setAttribute("pDetails",pDetails);
		
		
		RequestDispatcher dis=request.getRequestDispatcher("useraccnt.jsp");
		dis.forward(request, response);
		
	}else {
		List<patient>pDetails=patientDButil.getpatientDeatails(id);
		request.setAttribute("pDetails",pDetails);
		
		RequestDispatcher dis=request.getRequestDispatcher("useraccnt.jsp");
		dis.forward(request, response);
	}
	 
	}

}
