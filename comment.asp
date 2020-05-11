<!--#include file="config.asp"-->
<%
    if not isempty( Request.Form("comment_post1") ) Then
    
        username = Session("username")
        comment=Request.Form("post_text")
        blogid = Request.Form("blogid")

        sql1 = "INSERT INTO comments (comment,username,blogid) VALUES ('"&comment&"','"&username&"','"&blogid&"')"
        con.execute (sql1)

        sql="SELECT * FROM blogs WHERE id='"&blogid&"'"
        Set kayitlar = con.execute (sql)  

        Do While not kayitlar.eof
                    
                commentcount=kayitlar.fields("commentcount")

                kayitlar.movenext
        Loop  

        commentcount = commentcount + 1

        sql = "UPDATE blogs SET commentcount='"&commentcount&"' WHERE id='"&blogid&"'"
        con.execute (sql)

        bloglink= "blog.asp?id=" + blogid
        Response.Redirect(bloglink) 

    end if
%>