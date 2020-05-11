
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>

<%
Set baglan = Server.CreateObject("ADODB.Connection") 
baglan.open "PROVIDER=SQLOLEDB;DATA SOURCE=AIDATA;UID=sa;PWD=1234;DATABASE=intprog;CharSet=UTF-8 "
if baglan.errors.count=0  then
response.write "Bağlantı başarıyla gerçekleşti"
response.write("<br>")
end if

'vt veri girişi
isim=Request.Form("isim")
soyisim=Request.Form("soyisim")

'session.timeout=20
'Session("kullaniciad")=isim
'response.write(Session("kullaniciad"))

'session.abandon
'session.contents.removeall


if Session("kullaniciad")="ekmel" Then
	'buraya koyduğum kodlar sadece session ekmel olduğunda çalışacak

end if



'if isim<>"" Then
'	sql = "INSERT INTO kullanici (ad,soyad) VALUES ('"&isim&"','"&soyisim&"')"
'	baglan.execute (sql)
'end if
'response.write isim

sql="SELECT * FROM kullanici WHERE aktif='E' AND ad='"&isim&"' AND soyad='"&soyisim&"'"

Set kayitlar = baglan.execute (sql)
Do While not kayitlar.eof
	response.write(kayitlar.fields("ad")&" "&kayitlar.fields("soyad"))
	response.write("<br>")
	Session("kullaniciad")=kayitlar.fields("ad")
	kayitlar.movenext
Loop

if Session("kullaniciad")="ekmel" Then
	'buraya koyduğum kodlar sadece session ekmel olduğunda çalışacak
	response.write("session başladı")
elseif Session("kullaniciad")<>"ekmel" Then
%>

<form action="baglanti.asp" method="post">
isim: <input type="text" name="isim" value=""> <br>
Soyisim: <input type="text" name="soyisim" value=""> <br>
<input type="submit" value="giriş">
<input type="hidden" name="gizli" value=1>
</form>
<br><br><br>


<%
end if
'vt den veri çekme
sql="SELECT * from kullanici WHERE aktif='E'" 'vt da aktif sütunu olması lazım.
Set kayitlar = baglan.execute (sql)
Do While not kayitlar.eof
	response.write(kayitlar.fields("ad")&" "&kayitlar.fields("soyad"))
	response.write("<br>")
	kayitlar.movenext
Loop


'vt veri güncelleme
'sql = "UPDATE kullanici SET soyad='kaya' WHERE ad='ali'"
'baglan.execute (sql)
'response.write("<br><br><br>")


'vt silme işlemi
'sql = "DELETE from kullanici WHERE ad='ali'"
'baglan.execute (sql)
'response.write("<br><br><br>")




baglan.close
%>