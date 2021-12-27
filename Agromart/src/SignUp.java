import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.*;  
import javax.mail.internet.*;  
import javax.activation.*; 

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }
    Connection con;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String Query1="insert into deuser1 values(?,?,?,?,?,?,?,?)";
		PrintWriter pw=response.getWriter();
		String name=request.getParameter("name");
		String pwd=request.getParameter("password");
		String cpwd=request.getParameter("confirm_password");
		long mob=Long.parseLong(request.getParameter("phone"));
		String email=request.getParameter("email");
		String Address=request.getParameter("Address");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		
		long zip=Long.parseLong(request.getParameter("zip"));
		
		/*pw.print(mob);
		pw.print(name);
		pw.print(pwd);
		pw.print(cpwd);
		pw.print(Address);
		pw.print(zip);
		pw.print(email);
		pw.print(city);		
		pw.print(state);*/
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","reema1");
			 PreparedStatement ps= con.prepareStatement(Query1);
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select * from deuser1");
				while(rs.next())
				{
					String mail=rs.getString(4);
					if(email.equals(mail))
					{
						response.sendRedirect("error.jsp");
						break;
					}
					else
					{
						
					}
				}
			 if(pwd.equals(cpwd))
			 {
				 ps.setString(1, name);
				 ps.setString(2, pwd);
				 ps.setLong(3, mob);
				 ps.setString(4, email);
				 ps.setString(5, state);
				 ps.setString(6, city);
				 ps.setString(7, Address);
				 ps.setLong(8, zip);
				 ps.executeUpdate();
				  String to = email;
			      String from = "hrr.ind99@gmail.com"; 
			      String password="Zebronic1";
			      String host = "localhost"; 	
			      Properties properties = new Properties();
			      properties.put("mail.smtp.auth","true");
			      properties.put("mail.smtp.starttls.enable","true");
			      properties.put("mail.smtp.host","smtp.gmail.com");
			      properties.put("mail.smtp.port","587");
			      Session session10=Session.getInstance(properties, new Authenticator() {
			    	protected PasswordAuthentication getPasswordAuthentication()	    	
			    	{
			    		return new PasswordAuthentication(from,password);
			    	}
			    	});
			        Message message= new MimeMessage(session10);
					message.setFrom(new InternetAddress(from));
					message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
					message.setSubject("Welcome to agromart!");
					message.setText("Your account has been created successfully!" + "\n" + "You have set the password:"+pwd);
					Transport.send(message);   
					response.sendRedirect("login.jsp");
			 }
			 else
			 {
				 response.sendRedirect("error1.jsp");
			 }

		} catch ( MessagingException | ClassNotFoundException | SQLException e) {
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
