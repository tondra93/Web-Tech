package cse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WelcomeServlet
 */
@WebServlet("/WelcomeServlet")
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new_schema","root","1234%&To");
			String name = request.getParameter("tname");
			String course = request.getParameter("course");
			PreparedStatement ps = con.prepareStatement("insert into courses(course_id,tname,course)values(?,?,?)");
			System.out.println(name+ " " + course);
			ps.setInt(1, 1);
			ps.setString(2, name);
			ps.setString(3, course);
			ps.executeUpdate();
			if(request.getParameter("submit")!=null) {
				RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
				request.setAttribute("name", "name");
				request.setAttribute("course", "course");
				rd.forward(request, response);
				out.println("<font color=black>Record added");
			}
			else {
				out.println("<font color=red size=18>Please fill out the form!!<br>");
				
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

	

}
