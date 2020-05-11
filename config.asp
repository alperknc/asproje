<%	
    Response.AddHeader "Content-Type", "text/html;charset=UTF-8"
    Response.CodePage = 65001
    Response.CharSet = "UTF-8"

   Set con = Server.CreateObject("ADODB.Connection") 
   con.open "PROVIDER=SQLOLEDB;DATA SOURCE=localhost\SQL;UID=sa;PWD=1;DATABASE=asproje;CharSet=UTF-8 "
%>
