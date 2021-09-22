<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main...</title>
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
.style6 {color: #FF00FF}
.style7 {font-size: 14px}
.style8 {
	color: #FF0000;
	font-size: 14px;
	font-weight: bold;
}
.style9 {
	color: #FFFFFF;
	font-size: 12;
}
.style10 {color: #000000}
.style11 {font-size: 12px}
.style12 {font-size: 12}
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
          <h2 class="style2 style5">&nbsp;</h2>
          <div class="post_content">
            <h2 class="style6"> <span class="style6">Wel</span><span class="style6">come</span> <span class="style6">User</span> :: <span class="style6"><%=(String)application.getAttribute("uname")%></span></h2>
            <h2 class="style5"><span class="style8">Friend Request and Response Details !!! </span><br />
            </h2>
             
             <table width="555" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
        <%
						
					String user=(String)application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
							String query="select * from req_res where (requestto='"+user+"')"; 	   					
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
							
							
							
								
					%>
        <tr>
          <td width="204" rowspan="3"><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
              <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="user"%>&name=<%=s1%>" style="width:150px; height:150px;" />
          </a></div></td>
        </tr>
        <tr>
          <td  width="186" height="61" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style9" style="margin-left:20px;"> <strong>Friend Requested User Name</strong></div></td>
          <td  width="59" valign="middle" height="61" style="color:#000000;"><div align="left" class="style6 style10" style="margin-left:20px;">
              <%out.println(s1);%>
          </div></td>
        </tr>
        
        <tr>
         <td height="38" align="left" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left " class="style3 style4 style14 style10 style12" style="margin-left:20px;">Status</div></td>
			  <%
			  if(s3.equalsIgnoreCase("waiting"))
			  {%>
			  	 <td align="left" valign="middle" height="38"><div align="left" class="style11" style="margin-left:20px;">
                       <a href="U_UpdateReq.jsp?id=<%=i%>">waiting</a>
                      </div></td>
					  <%
					  }else
					  {
					  %><td  width="96" align="left" valign="middle" height="37"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s3);}%></div></td>
        </tr>
        
        <%				}     		
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
            
            <p class="style6">&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
<ul><h2>USER MENU</h2>
           <div class="gadget">
                  <p><a href="U_Profile.jsp">View  Profile</a> </p>
                  <p><a href="U_FrdSearchReq.jsp">Search Friend and Friend Request </a></p>
				  <p><a href="U_AllFriends.jsp">View All Friends</a></p>
				  <p><a href="U_CreateTweet.jsp">Create Tweet</a></p>
				   <p><a href="U_View_All_MyTweets.jsp">View All My Tweets</a></p>
				   
				   	<p><a href=" U_View_Retweet_Details.jsp"> View All Retweet Details</a></p>
				 
				   <p><a href="U_View_All_Friends_Tweets.jsp">View All My Friends Tweets</a></p>

               
                  <p><a href="U_Login.jsp">Logout</a></p>
          </div>
        </ul>      
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
