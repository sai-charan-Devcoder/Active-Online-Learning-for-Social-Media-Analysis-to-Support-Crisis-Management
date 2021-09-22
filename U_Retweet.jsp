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
           
       <h2 class="star" align="left"><span>Retweet Details !!! </span></h2>
          <p class="star" align="center">&nbsp;</p>
		  <%
    String tname1=request.getParameter("title");
	String by=request.getParameter("by");
%> 		  
 		  
<form name="s" action="U_Retweet1.jsp" method="post" id="form1" onSubmit="return valid()"  ons target="_top">		  
<table width="428" border="0" align="center">
              <tr>
                <td width="188" height="35" bgcolor="#FFFF00"><div align="center" class="style10 style6 style15 style16 style7"><strong>Tweet Name </strong></div></td>
                <td width="230" bgcolor="#00FFFF"><span class="style19">
                  <label>
                  <input type="text" name="tname" value="<%=tname1%>" readonly="readonly" />
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="188" height="35" bgcolor="#FFFF00"><div align="center" class="style10 style6 style15 style16 style7"><strong>Tweet By </strong></div></td>
                <td width="230" bgcolor="#00FFFF"><span class="style19">
                  <label>
                  <input type="text" name="tby" value="<%=by%>" readonly="readonly" />
                  </label>
                </span></td>
              </tr>
			  
              <tr>
                <td width="188" height="35" bgcolor="#FFFF00"><div align="center" class="style10 style16 style6 style15 style7"><strong>Enter Your Review Here </strong></div></td>
                <td bgcolor="#00FFFF"><span class="style19">
                  <textarea name="tcomment" rows="5" cols="21"></textarea>
                </span></td>
             </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><label>
                  <input type="submit" name="Submit" value="Re-Tweet" />
                </label></td>
              </tr>
</table>
</form>		  
		  
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
