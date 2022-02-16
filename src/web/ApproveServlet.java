package web;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/approve")
public class ApproveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ApproveServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vesselno = request.getParameter("vesselno");
	    String vesselname = request.getParameter("vesselname");
	    String from= request.getParameter("from");
	    String to = request.getParameter("to");
	    String deptdate = request.getParameter("deptdate");
	    String depttime = request.getParameter("depttime");
	    String arrivdate = request.getParameter("arrivdate");
	    String arrivtime = request.getParameter("arrivtime");
	    String length = request.getParameter("length");
	    String type = request.getParameter("type");
	    String port = request.getParameter("port");
	    String status = request.getParameter("status");
        ApproveBerth user = new ApproveBerth(vesselno, vesselname, from, to, deptdate, depttime, arrivdate,
        		arrivtime, length, type, port, status);
        
        try {
            user_database_operations.approveBerth(user);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("dashboard.jsp");
	}

}