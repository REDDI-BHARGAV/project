package com.utility;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Utility {
	 static SessionFactory sf = null;
	 static {
		 Configuration cfg = new Configuration();
		 cfg.configure("hibernate.cfg.xml");
		 sf=cfg.buildSessionFactory();
		 
	 }
	 public static SessionFactory getSessionFactory() {
		 return sf;
		 
	 }
	 public static  Session getSession() {
	Session ses= getSessionFactory().openSession();
	return ses;
		 
	 }

}
