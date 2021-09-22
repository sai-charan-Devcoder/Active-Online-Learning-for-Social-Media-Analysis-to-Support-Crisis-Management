<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Tweet</title>
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
.style7 {color: #FFFFFF}
.style8 {
	color: #FF0000;
	font-weight: bold;
}
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
           
       <h2 class="star" align="left"><span>Create Tweet </span>!!!</h2>
          <p class="star" align="center">&nbsp;</p>
		  
		  
		<form name="s" action="U_CreateTweet1.jsp" method="post" enctype="multipart/form-data"  onSubmit="return valid()"  ons target="_top">		  
 <table width="660" align="left">
                  <tr>
                    <td width="194" height="35" bgcolor="#FF0000"><span class="style7 style12">Tweet Title (required)</span></td>
                    <td width="454" bgcolor="#66FFFF"><input name="tname" class="text " id="name" /></td>
                  </tr>
				  
				   <tr>
                     <td height="39" bgcolor="#FF0000"><span class="style7 style12">
                       <label for="label">Tweet Description</label>
                     </span></td>
                     <td bgcolor="#66FFFF"><span class="style13">
                       <textarea id="desc" name="desc" rows="3" cols="50"></textarea>
                     </span></td>
                  </tr>
				  
				  <tr>
                    <td height="39" bgcolor="#FF0000"><span class="style7 style12">
                      <label for="label">Tweet Uses</label>
                    </span></td>
                    <td bgcolor="#66FFFF"><span class="style13">
                      <textarea id="tuses" name="tuses" rows="2" cols="30"></textarea>
                    </span></td>
                  </tr>
				  
                  <tr>
                    <td height="54" bgcolor="#FF0000"><span class="style7 style12">Select Tweet image (required)</span></td>
                    <td bgcolor="#66FFFF"><input name="pic" type="file" class="text " id="pic" /></td>
                  </tr>
                 
                  
                  <tr>
				  <td><p>&nbsp;</p></td>
                    <td><p>&nbsp;</p>
                    <div align="left">
                      <p>
                        <input name="submit" type="submit" value="Create Tweet" />
                        <span class="style15 style8">(Tweet Description will get Encrypted)</span></p>
                      <p>&nbsp;</p>
                      <p><a href="U_Main.jsp">Back</a></p>
                      <p>&nbsp;</p>
                    </div></td>
                  </tr>
</table>		  
</form>		  
        <p>&nbsp;</p>
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
