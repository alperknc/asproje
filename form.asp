<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bilgisayar Programcılığı</title>
<meta name="keyword" content="sigorta, elit, ankara">
</head>
<body>

<%
isim=Request.Form("isim")
'isim=Request.QueryString("isim")
response.write isim
%>

<form action="form.asp" method="post">
isim: <input type="text" name="isim" value="<%=isim%>"> <br>
<input type="submit" value="gönder">
<input type="hidden" name="gizli" value=1>
</form>













</body>
</html>