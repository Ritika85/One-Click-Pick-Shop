<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
int id = Integer.parseInt(request.getParameter("id").trim());
String name = request.getParameter("name");
String category = request.getParameter("category");
int price = Integer.parseInt(request.getParameter("price").trim());
String active=request.getParameter("active");
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement ("insert into product values (?,?,?,?,?)");
	ps.setInt(1,id);
	ps.setString(2,name);
	ps.setString(3,category);
	ps.setInt(4,price);
	ps.setString(5,active);
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
}
catch (Exception e){
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
	System.out.println(e);
}
%>