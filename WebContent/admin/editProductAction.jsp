<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
String id =request.getParameter("id").trim();
int id1= Integer.parseInt(id);
String name= request.getParameter("name");
String category= request.getParameter("category");
int price= Integer.parseInt(request.getParameter("price").trim());
String active = request.getParameter("active");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st= con.createStatement();
	st.executeUpdate("update product set name ='"+name+"' ,category ='"+category+"',price ="+price+",active ='"+active+"' where id ="+id1+"");
	if (active.equals("No")){
		st.executeUpdate("delete from cart where product_id ="+id1+" and address is NULL");
		
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
	
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>