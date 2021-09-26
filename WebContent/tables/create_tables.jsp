<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
try 
{
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	
	String q1 ="create table users(name varchar(20), email varchar(30) Primary Key, mobileNumber varchar(10), securityQuestion varchar(30), answer varchar(15), password varchar(15), address varchar(20), city varchar(15), state varchar(20),country varchar(15))";	
	String q2="create table product (id int , name varchar(25) , category varchar(15), price int , active varchar(10) )";
	String q3="create table cart (email varchar(30),product_id int , quantity int,price int , total int , address varchar(20), city varchar(15), state varchar(20), country varchar(15), mobileNumber varchar(10), orderDate date, deliveryDate date , paymentMethod varchar(30) , transactionId varchar(10), status varchar(12) ) ";
	String q4="create table message (id int PRIMARY KEY ,email varchar(30),subject varchar(30) , body varchar(30))";
	
	 System.out.println(q1);
	st.execute(q1);
	System.out.println("Table created.");
	System.out.println(q2);
	st.execute(q2);
	System.out.println("Table created.");
	System.out.println(q3);
	st.execute(q3);
	System.out.println("Table created.");
	System.out.println(q4);
	st.execute(q4);
	System.out.println("Table created.");
	con.close();
}
catch (Exception e ){
	System.out.println(e);
}

%>
