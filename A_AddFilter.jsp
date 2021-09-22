<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add behaviour</title>
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
.style6 {color: #FF0000}
.style7 {font-weight: bold}
.style9 {color: #FFFFFF; font-weight: bold; }
.style10 {color: #FF0000; font-weight: bold; }
-->
</style>

<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.categorie.value;
if(na3=="--Select--")

{
alert("Please Choose Categorie");
document.s.categorie.focus();
return false;
}
else
{

}

var na1=document.s.filter.value;
if(na1=="")

{
alert("Please Enter Filter");
document.s.filter.focus();
return false;
}
else
{

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
			
         	 <h2 align="center" class="style6 style5"><strong>Add Behaviours...</strong></h2>
	         <div class="clr"></div>
          
	
      	
	

  
      		
      		 
           
          
<form name="s" method="post" enctype="multipart/form-data" action="A_AddFilterIns.jsp" onSubmit="return valid()"  ons target="_top">            
                <label for="name"></label>
    <table width="323" border="0" align="center"  cellpadding="0" cellspacing="0" >
				<tr>
                    <td  width="117" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style7 style15 style18 style21 style4" style="margin-left:20px;">Categorie</div></td>
                    <td  width="206" valign="middle" height="50" style="color:#000000;"><div align="left" style="margin-left:20px;"><label>
        				<select id="s1" name="categorie">
						 <option>---Select Filter ---</option>
        				  <option>Flood</option>
        				  <option>Bushfires</option>
        				  <option>Disaster</option>
        				  <option>Accident</option>
           
          					
				        </select>
                    </label></td>
				</tr>
				
				
 <tr>
 <td  width="117" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style7 style15 style18 style21 style4" style="margin-left:20px;">Filters</div></td>
 <td  width="206" valign="middle" height="50" style="color:#000000;"><div align="left" style="margin-left:20px;">
 <input type="text" name="filter"></div></td>
 </tr>
</span><div > 
<tr>
<td height="30" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input type="submit" value="Add" style="width:100px; height:25px; background-color:#000000; color:#FFFFFF;"/></td>
</tr></div>
	
				
				
				
		  </table>
		
		</form>

  <div> 
    <p>&nbsp;</p>
    <h2 class="style10">CRISIS FILTER DETAILS !!!</h2>
  </div>  
  
  
  <table width="595" height="61" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#99FF33">
					 <td  width="107" height="25" valign="baseline" bgcolor="#0000FF" style="color: #2c83b0;"><div align="center" class="style9">Category </div></td>
					 <td  width="105" height="25" valign="baseline" bgcolor="#0000FF" style="color: #2c83b0;"><div align="center" class="style9">Filters</div></td>
					</tr>
					<%@ include file="connect.jsp" %>
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0,count=0;
try 
{
	String query="select * from filter order by categorie ASC "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		s1=rs.getString(1);
		s2=rs.getString(2);

		%>
					
							<tr bgcolor="#00FFFF">
						
							  <td  width="50" height="30" valign="baseline" nowrap="nowrap" bgcolor="#FFFFFF" style="color:#000000;">
							    <div align="center" class="style7">
							      <%out.println(s1);%>
					          </div></td>	
								<td  width="50" height="30" valign="baseline" nowrap="nowrap" bgcolor="#FFFFFF">
							  
						          <div align="center" class="style7">
						            <%out.println(s2);%>
		                      </div></td>
					</tr>
					<%
						}
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
  <p align="right"><a href="A_Main.jsp" class="style2">Back</a></p>
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
