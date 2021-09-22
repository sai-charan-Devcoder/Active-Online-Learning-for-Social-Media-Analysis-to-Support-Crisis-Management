<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Shared Images</title>
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
.style3 {
	font-family: "Times New Roman", Times, serif;
	font-size: 24px;
}
.style4 {
	color: #FF0000;
	font-size: 14px;
}
.style5 {font-size: 24px}
.style6 {color: #FF0000}
.style7 {color: #FF0000; font-weight: bold; }
.style9 {font-size: 18}
.style10 {color: #FFFFFF}
-->
</style>
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
          <li class="active"><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li><a href="U_Login.jsp"><span>user</span></a></li>
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
          <div class="img"></div>
          <div class="post_content">
            <p align="justify">&nbsp;</p>
			
         	 <h2 class="style7">View All Tweet Details !!! </h2>
         	 <p>&nbsp;</p>
         	 <table width="641" border="0" cellpadding="0" cellspacing="0" align="left">
        <tr bgcolor="#00FF33">
         <td width="55" height="44" bgcolor="#FFFF00"><div align="center" class="style3 style20 style27 style16 style11 style9 style10"><strong>Id</strong></div></td>
         <td width="132" bgcolor="#FFFF00"><div align="center" class="style3 style20 style27 style16 style11 style9 style10"><strong>Tweet Image  </strong></div></td>
         <td width="132" bgcolor="#FFFF00"><div align="center" class="style3 style20 style27 style16 style11 style9 style10"><strong>Tweet Title  </strong></div></td>
		<td width="163" bgcolor="#FFFF00"><div align="center" class="style3 style20 style27 style16 style11 style9 style10"><strong>Tweet Owner</strong></div></td>
		 <td width="149" bgcolor="#FFFF00"><div align="center" class="style3 style20 style27 style16 style11 style9 style10"><strong> ReTweets </strong></div></td>
   		</tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	   String query="select * from tweets "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//title
		s8=rs.getString(8);//owner
		
		
		%>
                    
                    <tr>
                      <td><div align="center" class="style18 style12 style13 style7 style6"><%=j%></div></td>
					  <td><input  name="image" type="image" style="width:90px; height:90px;" src="t_Pic.jsp?id=<%=i%>"></td>
					  <td><div align="center" class="style18 style12 style13 style7 style6"><%=s2%></div></td>
					  <td><div align="center" class="style18 style12 style13 style7 style6"><%=s8%></div></td>
					  <td><div align="center" class="style7"><a href="A_Retweet_Details.jsp?title=<%=s2%>" class="style19 style12">Click Here</a></div></td>
					</tr>
        <%
		
	  j=j+1;}
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
<p align="right"><a href="A_Main.jsp" class="style4">Back</a></p>
</div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="A_Main.jsp">Home</a></li>
            <li><a href="A_Login.jsp">LogOut</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
