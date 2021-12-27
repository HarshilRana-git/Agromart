

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class feedback
 */
@WebServlet("/feedback")
public class feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public feedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter pw=response.getWriter();
		String feedback=request.getParameter("feedback");
		 HttpSession session=request.getSession(false); 
		String email=(String)session.getAttribute("email");
		//pw.print(feedback);
		//pw.print(email);
		 String to = email;
	      String from = ""; 
	      String password="";
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
			try {
				message.setFrom(new InternetAddress(from));
				message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
				message.setSubject("Welcome to agromart!");
				message.setText(feedback);
				Transport.send(message);   
				response.sendRedirect("home.html");
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
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
