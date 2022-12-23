<%@ page import = "java.sql.*"%>
<%
String email = request.getParameter("studentemail");
String password = request.getParameter("studentpassword");
try{

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dinandfun","root","");
    PreparedStatement ps = conn.prepareStatement("insert into login(email , Password) values(?,?);");
    ps.setString(1,email);
 ps.setString(2,password);
 int x = ps.executeUpdate();
 if(x>0){
    out.println("Login done Successfully..");
 }else{
    out.println("Login Failed..");
 }


   
} catch(Exception e){
    out.println(e);
}

%>