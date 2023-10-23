package tools;



import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class SendMail {
	
	public static void envoyeremail(String recep_email,String recep_mdp) throws MessagingException {
		
		System.out.println("Preparing to send email");
		Properties properties=new Properties();
		
		properties.put("mail.smtp.auth","true");
		properties.put("mail.smtp.starttls.enable","true");
		properties.put("mail.smtp.host","smtp.gmail.com");
		properties.put("mail.smtp.port","587");
		
		String exp_email="guzelim120@gmail.com";
		String exp_mdp="vzomdcuiuqvyaetq";
		
		Session ssession=Session.getInstance(properties,new Authenticator(){
			@Override
			protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication(exp_email,exp_mdp);
			}
		});

		Message message= prepareMessage(ssession,exp_email,recep_email,recep_mdp);
		System.out.println("Preparing to send email2");
		Transport.send(message);
		System.out.println("Preparing to send email3");
		System.out.println("Message sent successfully");
	}

	private static Message prepareMessage(Session ssession,String exp_email,String recep_email,String recep_mdp){
	        try {
		        Message message= new MimeMessage(ssession);
				message.setFrom(new InternetAddress(exp_email));
				message.setRecipient(Message.RecipientType.TO,new InternetAddress(recep_email));
				message.setSubject("Platforme de gestion PFE ");
		        message.setText("Bonjour votre compte est activer \n\nVos coordonnées pour acceder a votre espace \nEMAIL: "
				+recep_email+"\nMdP: "+recep_mdp+"\n\n\nMerci de changer votre mot de passe pour des raison de securité");
		        return message;
			} catch (Exception ex) {
				Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE,null,ex);
			}
	       
	    return null;
	}
}
