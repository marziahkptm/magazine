<html><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<body>
<jsp:useBean id="beanaffnews" class="news.BeanAffNews" scope="request"/>
<jsp:setProperty name="beanaffnews" property="*"/>                      
<br><br>

<form method=get>

<div align="center"><font size="+3"><b><u>Derniere infos...</u></b></font></div>
<br><br><br>

<% beanaffnews.connect(); %>
<!--
titre : <%= beanaffnews.getTitre()%>
<br>
date : <%= beanaffnews.getDate()%>

<br>
Corps : <%= beanaffnews.getCorps()%>

<br>
Formation : <%= beanaffnews.getForm()%>
<br>
Theme : <%= beanaffnews.getTheme()%>
<br>
Lien : <A href="<%= beanaffnews.getLien()%>"><%= beanaffnews.getLien()%></A>
<br>
<br>
-->
<%= beanaffnews.affiche() %>

<% beanaffnews.close(); %>

<br><br><br><br><br>

<% if (beanaffnews.getErreur()!=null)
{

%>
<%= beanaffnews.getErreur() %> 
<% 
}
%>
</form>
</body>
</html>
