import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class log
 */
@WebServlet("/log")
public class log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Connection con;
    /**0
     * @see HttpServlet#HttpServlet()
     */
    public log() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","root");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from deuser1");
			PrintWriter pw=response.getWriter();
			String email=request.getParameter("email");
			String pwd=request.getParameter("pwd");
			pw.print(email);
			pw.print(pwd);
			while(rs.next())
			{
				String id=rs.getString(4);
				String psd=rs.getString(2);
				String name=rs.getString(1);
				pw.print(id);
				pw.print(psd);
				pw.print(name);
				if(email.equals(id) && pwd.equals(psd))
				{
					HttpSession session=request.getSession();  
				    session.setAttribute("email",email);  
				    session.setAttribute("name",name);  
					response.sendRedirect("index.jsp");
					//pw.println(mob);
					break;
				}
			}
		} 
		catch (ClassNotFoundException | SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
