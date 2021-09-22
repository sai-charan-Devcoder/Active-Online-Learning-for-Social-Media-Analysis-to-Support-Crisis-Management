<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Retweet</title>
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
.style5 {font-size: 24px}
.style6 {
	color: #FFFFFF;
	font-weight: bold;
}
.style7 {color: #FFFFFF}
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
           
       <h2 class="star" align="left"><span>Retweeted Success  !!! </span></h2>
          <p class="star" align="center">&nbsp;</p>
		  <p>
		    <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
              <%@ page import="java.sql.*"%>
              <%@ include file="connect.jsp" %>
              <%@ page import="java.util.Date" %>
		    
		    
              <%
					
				
					
					String user=(String)application.getAttribute("uname");
					String tcomment=request.getParameter("tcomment");
					String title=request.getParameter("tname");
					String tby=request.getParameter("tby");
					String tcomment2=tcomment.toLowerCase();
					
					String s6,s7;
					int x2=0;
					
			try 
			  {
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						Date now = new Date();
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
						PreparedStatement ps=connection.prepareStatement("insert into retweet(title,user,comment,dt,t_owner,retweet_type) values(?,?,?,?,?,?)");
						ps.setString(1,title);
						ps.setString(2,user);	
						ps.setString(3,tcomment);
						ps.setString(4,dt);
						ps.setString(5,tby);
						ps.setString(6,"Retweet");
						ps.executeUpdate();
					
							String sql2="update tweets set rank=rank+1 where title='"+title+"'";
				            Statement st2=connection.createStatement();
				            st2.executeUpdate(sql2);

			  }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
		    </p>
		  <p><a href="U_Main.jsp">Back</a></p>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">LogOut</a></li>
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
