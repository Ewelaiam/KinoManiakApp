package com.example.kinomaniak.service;


import org.springframework.stereotype.Service;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


@Service
public class MailSendingService {

    public void sendEmail(String toEmail, String title, String message_text){
        String host = "smtp.gmail.com";
        String fromEmail = "kinomaniakhr@gmail.com";
        String password = "mjjaswcfaohxtcoa";

        Properties properties = System.getProperties();

        properties.put("mail.smtp.host", host);

        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");

        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("kinomaniakhr@gmail.com", password);
            }
        });

        session.setDebug(true);
        try {
            MimeMessage message = new MimeMessage(session);

            message.setSubject(title);
            message.setText(message_text);

            message.setFrom(new InternetAddress(fromEmail));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

            Transport.send(message);
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }
}
