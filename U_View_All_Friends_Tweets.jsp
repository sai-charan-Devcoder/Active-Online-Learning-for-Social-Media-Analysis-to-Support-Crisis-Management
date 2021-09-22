<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile...</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {
	color: #FF0000;
	font-size: 14px;
}
.style5 {font-size: 24px}
.style6 {
	color: #FFFFFF;
	font-weight: bold;
}
.style7 {color: #FF0000}
-->
</style>

<script language="javascript" type="text/javascript">
function valid()
{

var na1=document.s.com.value;
if(na1=="")

{
alert("Please Enter Comment");
document.s.com.focus();
return false;
}

}
</script>


</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1><a href="index.html"><span class="style5">Active Online Learning for Social Media Analysis to Support Crisis Management</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>user</span></a></li>
          <li><a href="U_Register.jsp"><span>register</span></a></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="post_content">
           
       <h2 class="star" align="left"><span>View All My Friends Tweets !!! </span></h2>
          <p class="star" align="center">&nbsp;</p>
		 <table width="853" border="1.5" cellpadding="0" cellspacing="0" align="left">
    <tr bgcolor="#00FF33">
       <td width="28" height="45"  bgcolor="#FFFF00"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style16 style7 style14"><strong>Id  </strong></div></td>
	   <td width="97" bgcolor="#FFFF00"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style16 style7 style14"><strong>Uploader<br />(Friend)</strong></div></td>
       <td width="97" bgcolor="#FFFF00"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style16 style7 style14"><strong>Tweet Image  </strong></div></td>
       <td width="108" bgcolor="#FFFF00"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style16 style7 style14"><strong>Tweet Title  </strong></div></td>
       <td width="132" bgcolor="#FFFF00"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style16 style7 style14"><strong>Description<br />(Decrypted) </strong></div></td>
       <td width="120" bgcolor="#FFFF00"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style16 style7 style14"><strong>Tweet Uses</strong></div></td>
	   <td width="112" bgcolor="#FFFF00"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style16 style7 style14"><strong>Upload Date</strong></div></td>
	   <td width="68" bgcolor="#FFFF00"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style16 style7 style14"><strong>Rank</strong></div></td>
	   <td width="170" bgcolor="#FFFF00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style7"><strong>Ratings</strong></div></td>
	   <td  bgcolor="#FFFFFF"></td>
    </tr>

<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
			<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
			<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>                      
<%	  
			  
	String user=(String)application.getAttribute("uname");
    
	String s1,s2,s3,s4,s5,s6,s7,s8,rto;
	int i=0,j=0,m=0,k=1,count=0;
	
	try 
	{
	
	ArrayList al=new ArrayList();
	ArrayList al1=new ArrayList();
	String sql="select requestto from req_res where(requestfrom='"+user+"' and status='Accepted')";
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		rto=rs.getString(1);
		al1.add(rto);
	}
	String sql1="select requestfrom from req_res where(requestto='"+user+"' and status='Accepted')";
	Statement st1=connection.createStatement();
	ResultSet rs1=st1.executeQuery(sql1);
	while(rs1.next())
	{
		rto=rs1.getString(1);
		al1.add(rto);
	}
	
	for(j=0;j<al1.size();j++)
	{

	String sql2="select * from tweets where user='"+al1.get(j)+"'"; 
	Statement st2=connection.createStatement();
	ResultSet rs2=st2.executeQuery(sql2);
	while(rs2.next())
	{
		i=rs2.getInt(1);
		s2=rs2.getString(2);
		s3=rs2.getString(3);
		s4=rs2.getString(4);
		s5=rs2.getString(5);
		s6=rs2.getString(6);
		s7=rs2.getString(7);
		s8=rs2.getString(8);
		al.add(s2);
		
		
		
		
		        String keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			
				String decs4 = new String(Base64.decode(s4.getBytes()));
		
%>
		  
                  <tr>
                      <td><div align="center" class="style17 style7 style18 style6 style12 style7"><%=k%></div></td>
					  <td><div align="center" class="style17 style7 style18 style6 style12 style7"><%=s8%></div></td>
                      <td><input  name="image" type="image" class="style6 style7" style="width:90px; height:90px;" src="t_Pic.jsp?id=<%=i%>" /></td>
					  <td><div align="center" class="style17 style7 style18 style6 style12 style7"><%=s2%></div></td>
					  <td><span class="style13 style7">
					    <textarea name="text" cols="10" rows="5" readonly><%= decs4 %></textarea>
					    </span></td>
					  <td><span class="style13 style7">
					    <textarea name="text" cols="10" rows="5" readonly><%= s5 %></textarea>
					    </span></td>
					  <td><div align="center" class="style17 style7 style18 style6 style12 style7"><%=s6%></div></td>
					  <td><div align="center" class="style17 style7 style18 style6 style12 style7"><%=s7%></div></td>
					  <td>    
				  
			            
			            <span class="style13 style7">
			            <%
		int rank=Integer.parseInt(s7);
					 
    if(rank==3)
    {
    	%>
                        <input  name="image2" type="image" src="Gallery/1.png" width="30" height="30" />
                        <%
    }
    if(rank>3 && rank<=6)
    {

    	%>
                        <input  name="image2" type="image" src="Gallery/2.png" width="80" height="30" />
                        <%
    }
    if(rank>6 && rank<=9)
    {
    	%>
                        <input  name="image2" type="image" src="Gallery/3.png" width="100" height="30" />
                        <%
    }
    if(rank>9 && rank<=12)
    {
    	%>
                        <input  name="image2" type="image" src="Gallery/4.png" width="120" height="30" />
                        <%
    }
    if(rank>12 && rank<=15)
    {
    	%>
                        <input  name="image2" type="image" src="Gallery/5.png" width="140" height="30" />
                        <%
    }
    if(rank>15)
    {
    	%>
                        <input  name="image2" type="image" src="Gallery/6.png" width="170" height="30" />
                        <%
    }
    %>
                        </span></td>
						
						<td align="center"><p><a href="U_Retweet.jsp?title=<%=s2%>&by=<%=s8%>" class="style15">Retweet</a></p>
						  <p><br />
				            <a href="u_recommend.jsp?title=<%=s2%>&by=<%=s8%>" class="style15"></a></p></td>
		    </tr>
        <%
		
	  
	  
	  
				
		  k=k+1;}
				}
					if(al.isEmpty())
					{
					%>
					<h3 class=" style4">Sorry..!! There is no tweets found</h3>
					<%
					}
					 String msg=(String)application.getAttribute("msg");
					 if(msg!=null)
					 {
					 %>
					 <h3 class="style8 style4"> <%=msg%></h3> 
					 <%
					 application.removeAttribute("msg");
					 }
					
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
</table>	  
		  
		  
		  
		  
		  
		  
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right"><a href="U_Main.jsp" class="style5">Back</a></p>         		  
		  
		  <p>&nbsp;</p>
		  <p><a href="U_Main.jsp"></a></p>
		  <p>&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="clr">
        <p>&nbsp;</p>
        
        <p>&nbsp;</p>
      </div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
