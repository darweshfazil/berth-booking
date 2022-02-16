package web;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/register")
public class RegisterServlet extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {

    	        String username = request.getParameter("username");
    	        String email = request.getParameter("email");
    	        String phone = request.getParameter("phone");
    	        String job = request.getParameter("job");
    	        String password = request.getParameter("password");
    	        UserModel user = new UserModel(username,email,phone,job,password);

    	        try {
    	            user_database_operations.registerData(user);
    	        }
    	        catch (Exception e) {
    	            e.printStackTrace();
    	        }
    	        response.sendRedirect("home.jsp");
    	    }

}
