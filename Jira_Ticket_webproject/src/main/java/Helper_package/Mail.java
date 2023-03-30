package Helper_package;

import java.io.IOException;

import java.util.Properties;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletResponse;


public class Mail {

	
	public static void sendMailforNotifymailId(int id, String notify) {
		
		String receiver = notify;
		String email_message = "your ticket id-" + id + " " + "has been successfully resolved";

			final String username = "officialkk64@gmail.com";
			final String password = "zghpcpzgjaypgznq";


			
			Properties properties = new Properties();
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.starttls.enable", "true");
			properties.put("mail.smtp.host", "smtp.gmail.com");
			properties.put("mail.smtp.port", "587");

			Session session = Session.getDefaultInstance(properties, new Authenticator() {

				protected PasswordAuthentication getPasswordAuthentication() {
					
					return new PasswordAuthentication(username, password);
				}
			});
			
			Message messageBody = new MimeMessage(session);
			try {
				messageBody.setFrom(new InternetAddress(username));
				messageBody.setRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
				messageBody.setSubject("Jira Ticket Update");
				messageBody.setText(email_message);				
				Transport.send(messageBody);
				System.out.println("end");
			} catch (Exception e) {
				
				System.out.println(e.getLocalizedMessage());

	    }
	}

	}
