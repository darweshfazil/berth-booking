package web;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cancel")
public class CancelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CancelServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vesselno = request.getParameter("vesselno");
	    String vesselname = request.getParameter("vesselname");
	    String ownerphone = request.getParameter("ownerphone");
	    String agencyemail = request.getParameter("agencyemail");
	    String agentphone = request.getParameter("agentphone");
	    String from= request.getParameter("from");
	    String to = request.getParameter("to");
	    String deptdate = request.getParameter("deptdate");
	    String depttime = request.getParameter("depttime");
	    String arrivdate = request.getParameter("arrivdate");
	    String arrivtime = request.getParameter("arrivtime");
	    String port = request.getParameter("port");
	    String status = "cancel";
        CancelBerth user = new CancelBerth(vesselno, vesselname, ownerphone, agencyemail, agentphone, from, to, deptdate, depttime, arrivdate, arrivtime, port, status);

        try {
            user_database_operations.CancelBerth(user);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("home.jsp");
	}

}