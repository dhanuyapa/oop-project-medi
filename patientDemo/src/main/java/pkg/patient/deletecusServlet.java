package pkg.patient;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletecusServlet")
public class deletecusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("cusId");
		boolean isTrue;
		
		isTrue=patientDButil.deletePatient(id);
		
		if(isTrue==true) {
			RequestDispatcher dispatecher=request.getRequestDispatcher("insertData.jsp");
		    dispatecher.forward(request,response);
		}
		else {
			List<patient> pdetails=patientDButil.getpatientDeatails(id);
			request.setAttribute("pdetails", pdetails);
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("usserccnt.jsp");
			dispatcher.forward(request,response);
		}
		
	}

}
