<%
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
%>