<%@ page import = "java.sql.*"%>
<%
String firstname = request.getParameter("fname");
String lastname = request.getParameter("lname");
String email = request.getParameter("mail");
String password = request.getParameter("cpass");
String cpassword = request.getParameter("kpass");

try{

 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dinandfun","root","");
 PreparedStatement ps = conn.prepareStatement("insert into signup(firstname , lastname , email , createpassword, confirmpassword) values(?,?,?,?,?);");
 ps.setString(1,firstname);
 ps.setString(2,lastname);
 ps.setString(3,email);
 ps.setString(4,password);
 ps.setString(5,cpassword);
 int x = ps.executeUpdate();
 if(x>0){
    out.println("Registration done Successfully..");
 }else{
    out.println("Registration Failed..");
 }


   
} catch(Exception e){
    out.println(e);
}

%>
