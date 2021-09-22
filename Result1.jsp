
<%@ include file="connect.jsp"%>

<%
try
{
	 String query="select * from tweets";
	 Statement st=connection.createStatement();
	 ResultSet rs=st.executeQuery(query);
					
%>

<html>
<head>
<title>Account Type Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<style type="text/css">
<!--
.style2 {color: #C1FFFF}
.style3 {color: #F0F0F0}
-->
</style>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0,count=0,count1=0,s7=0;
	String s2;

	while(rs.next())
	{
	  s2=rs.getString(2);
	  s7=rs.getInt(7);
	  
	       String query2="select * from retweet where title='"+s2+"' ";
	       Statement st2=connection.createStatement();
	       ResultSet rs2=st2.executeQuery(query2);
	  	   while(rs2.next())
	       {
		    count++;
		   }		
	
	%>
	
	myData["<%=i%>"]=["<%= s2%>",<%= count%>];
        
	<%
	
	count=0;
	                
	i++;
	}                
					
	
	
	
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF3300');
	myChart.setBarOpacity(0.8);
	myChart.setSize(600,300);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#0000FF');
	myChart.setAxisColor('#0588c6');
	myChart.setAxisValuesColor('#0000FF');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

