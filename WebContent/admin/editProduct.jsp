<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<%
String id= request.getParameter("id");
System.out.print(id);
  int id1=Integer.parseInt(id.trim());
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("Select * from product where id ="+id1+"");
	
	while (rs.next()){
		
		 %>
<form action="editProductAction.jsp" method="post">
<input type="hidden" name="id" value="<% out.print(id);%>" >
<div class="left-div">
 <h3>Enter Name</h3>
 <input class ="input-style" type="text" name="name" value="<%out.print(rs.getString(2));%>" required>
 <hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
<input class ="input-style" type="text" name="category" value=" <%out.print(rs.getString(3));%>" required>
 
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 <input class ="input-style" type="number" name="price" value="<%out.print(String.valueOf(rs.getInt(4)));%>" required>
 
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
<select class="input-style" name="active">
<option value="Yes">Yes</option>
<option value="No">No</option>
</select>
 <hr>
</div>
<button class="button"> Save </button> <i class='far fa-arrow-alt-circle-right'></i>
</form>
<%
}
}
catch (Exception e){
	System.out.println(e);
	}
%>


</body>
<br><br><br>
</body>
</html>