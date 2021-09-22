
<%@ include file="connect.jsp"%>

<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Bushfires",s22="" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	String stype="Bushfires";
	
	try
	{
			String sql3="select title,user from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0;
			%>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
.style6 {color: #FF0000; font-weight: bold; }
-->
</style>

	<table width="778" border="1">
				  
				  <tr>
					<td width="132" bgcolor="#FF0000" ><div align="left" class="style4 style5 style35 style1 style2">
						<div align="center" class="style1">Retweeted User </div>
					</div></td>
					<td width="143" bgcolor="#FF0000" ><div align="left" class="style4 style36 style1 style2">
						<div align="center">Tweet Title</div>
					</div></td>
					<td width="181" bgcolor="#FF0000" ><div align="left" class="style4 style36 style1 style2">
						<div align="center">Retweet Review Details</div>
					</div></td>
					<td width="97" bgcolor="#FF0000" ><div align="left" class="style4 style36 style1 style2">
						<div align="center">Retweeted Date</div>
					</div></td>
					<td width="113" bgcolor="#FF0000"><div align="left" class="style37 style4 style1">
						<div align="center">Tweet Owner</div>
					</div></td>
				  </tr>
				 
				  <%

				  String query="select * from retweet where title='"+s1+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(2); //user
					s22=rs.getString(3);//title
					s3=rs.getString(4).toLowerCase();  // comment post 
					s4=rs.getString(5);  // date
					s5=rs.getString(6);  // owner
					
					count++;

			   
			       String sql1="select * from filter where categorie='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s3.contains(t2)))
									{ 
	
			                 count1++;
									 %>
							  <tr>
								<td width="132" height="0" bgcolor="#FF0000"  style="color:#000000;"><div align="center" class="style32 style1"><strong> <%=s2%></strong></div></td>
								<td width="143" height="0"  style="color:#000000;"><div align="center" class="style32 style5"><strong><%=s22%></strong></div></td>
								<td width="181" height="0"  style="color:#000000;"><div align="center" class="style32 style5"><strong><textarea cols="20" rows="5"><%=s3%></textarea></strong></div></td>
							    <td width="97" height="0"  style="color:#000000;"><div align="center" class="style32 style5"><strong><%=s4%></strong></div></td>
							    <td width="113" height="0"  style="color:#000000;"><div align="center" class="style32 style5"><strong><%=s5%></strong></div></td>
							   		  
	  </tr>
							  				
		    <%   					}

					      }
			      }
			        
			
				
				}
				
				
				
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
