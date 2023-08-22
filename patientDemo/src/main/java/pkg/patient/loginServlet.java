package pkg.patient;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("uname");
		String password=request.getParameter("pass");
		
		try {
		List<patient>patientDetails=patientDButil.validate(username,password);
	   request.setAttribute("pDetails",patientDetails);
		}catch (Exception e) {
			e.printStackTrace();
			
		}
	   RequestDispatcher dis=request.getRequestDispatcher("useraccnt.jsp");
	   dis.forward(request,response);
	}

}
