package web;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/booking")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BookingServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vesselno = request.getParameter("vesselno");
	    String vesselname = request.getParameter("vesselname");
	    String vesselowner = request.getParameter("vesselowner");
	    String ownerphone = request.getParameter("ownerphone");
	    String agencyname = request.getParameter("agencyname");
	    String agentname = request.getParameter("agentname");
	    String agencyemail = request.getParameter("agencyemail");
	    String agentphone = request.getParameter("agentphone");
	    String agentcity = request.getParameter("agentcity");
	    String agencypincode = request.getParameter("agencypincode");
	    String from= request.getParameter("from");
	    String to = request.getParameter("to");
	    String deptdate = request.getParameter("deptdate");
	    String depttime = request.getParameter("depttime");
	    String arrivdate = request.getParameter("arrivdate");
	    String arrivtime = request.getParameter("arrivtime");
	    String length = request.getParameter("length");
	    String type = request.getParameter("type");
	    String port = request.getParameter("port");
	    String status = "pending";
        BookBerth user = new BookBerth(vesselno, vesselname, vesselowner, ownerphone, agencyname, agentname,
        		agencyemail, agentphone, agentcity, agencypincode, from, to, deptdate, depttime, arrivdate,
        		arrivtime, length, type, port, status);

        try {
            user_database_operations.bookBerth(user);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("home.jsp");
	}

}