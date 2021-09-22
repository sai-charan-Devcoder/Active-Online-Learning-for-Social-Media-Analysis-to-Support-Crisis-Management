<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View_Retweet_Details</title>
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
.style6 {color: #FFFFFF}
.style7 {font-size: 18px}
.style9 {color: #FF0000}
.style10 {color: #0000FF}
.style12 {font-size: 14px}
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
	       <p align="center" class="style3"><span class="style4"><span class="style5">View All Retweet Details</span><span class="style21 style7 style10"></span></span></p>
          <div class="clr"></div>
          <p>&nbsp;</p>
		  
		  

<table width="648" border="1.5" cellpadding="0" cellspacing="0" align="left">
             <tr bgcolor="#00FF33">
               <td width="68" height="54" bgcolor="#FFFF00"><div align="center" class="style6 style24 style23 style22 style27 style20 style3 style12"><strong>Id  </strong></div></td>
			   <td width="79" bgcolor="#FFFF00"><div align="center" class="style6 style24 style23 style22 style27 style20 style3 style12"><strong>ReTweeted<br />
		        User</strong></div></td>
				<td width="92" bgcolor="#FFFF00"><div align="center" class="style6 style24 style23 style22 style27 style20 style3 style12"><strong>Tweet Title</strong></div></td>
               <td width="283" bgcolor="#FFFF00"><div align="center" class="style6 style24 style23 style22 style27 style20 style3 style12"><strong>ReTweets(Comments)</strong></div></td>
			   <td width="114" bgcolor="#FFFF00"><div align="center" class="style6 style24 style23 style22 style27 style20 style3 style12"><strong>ReTweet Date </strong></div></td>
			  

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
	
							String uname=(String)application.getAttribute("uname");
      	                    String query="select * from retweet where t_owner='"+uname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								   s2=rs.getString(2);//user
								s3=rs.getString(3);//title
								   s4=rs.getString(4);//comment
								   s5=rs.getString(5);//dt
								s6=rs.getString(6);//owner
								
		
		
		%>
              <tr>
                      <td height="57"><div align="center" class="style7 style13 style23 style25 style9"><%=i%></div></td>
      				  <td><div align="center" class="style7 style13 style23 style25 style9"><%=s2%></div></td>
					        				  <td><div align="center" class="style7 style13 style23 style25 style9"><%=s3%></div></td>
					  <td><span class="style13 style9"><textarea name="text" cols="40" rows="5" readonly><%= s4 %></textarea></span></td>
					  <td><div align="center" class="style7 style13 style23 style25 style9"><%=s5%></div></td>
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
<p align="right"><a href="U_Main.jsp" class="style4">Back</a></p>
</div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
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
