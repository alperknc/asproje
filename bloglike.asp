<!--#include file="config.asp"-->
<%
    operation=Request.QueryString("operation") 
    blogid=Request.QueryString("id") 

    bloglink= "blog.asp?id=" + blogid
   
   If operation="like"Then
       
        username = Session("username")

        row = "first"

        sql="SELECT * FROM likes WHERE username='"&username&"' and blogid='"&blogid&"'"
        Set register = con.execute (sql)
        Do While not register.eof
            likeid= register.fields("id")
            islike = register.fields("islike")
            
            if islike="like" Then
                row = "like"
            else 
                row = "unlike"
            end if
            register.movenext
        Loop

        sql="SELECT * FROM blogs WHERE id='"&blogid&"'"
        Set register = con.execute (sql)
        Do While not register.eof
            likecount= register.fields("likecount")
            unlikecount = register.fields("unlikecount")
        
            register.movenext
        Loop

        if row="first" Then
            sql1 = "INSERT INTO likes (username,blogid,islike) VALUES ('"&username&"','"&blogid&"', 'like')"
            con.execute (sql1)

            likecount = likecount + 1

            sql = "UPDATE blogs SET likecount='"&likecount&"' WHERE id='"&blogid&"'"
            con.execute (sql)
            Response.Redirect(bloglink)
        ElseIf row="like" Then
            sql = "DELETE from likes WHERE id='"&likeid&"'"
            con.execute (sql)

            if likecount then
            likecount = likecount - 1
            end if

            sql = "UPDATE blogs SET likecount='"&likecount&"' WHERE id='"&blogid&"'"
            con.execute (sql)
            Response.Redirect(bloglink)
        Else
            sql = "UPDATE likes SET islike='like' WHERE id='"&likeid&"'"
            con.execute (sql)

            likecount = likecount + 1
            if unlikecount>0 then
            unlikecount = unlikecount - 1
            end if

            sql = "UPDATE blogs SET likecount='"&likecount&"', unlikecount='"&unlikecount&"' WHERE id='"&blogid&"'"
            con.execute (sql)
            Response.Redirect(bloglink)
        end if
   Else
       username = Session("username")

        row = "first"

        sql="SELECT * FROM likes WHERE username='"&username&"' and blogid='"&blogid&"'"
        Set register = con.execute (sql)
        Do While not register.eof
            likeid= register.fields("id")
            islike = register.fields("islike")
            
            if islike="unlike" Then
                row = "unlike"
            else 
                row = "like"
            end if
            register.movenext
        Loop

        if row="first" Then
            sql1 = "INSERT INTO likes (username,blogid,islike) VALUES ('"&username&"','"&blogid&"', 'unlike')"
            con.execute (sql1)

            unlikecount = unlikecount + 1

            sql = "UPDATE blogs SET unlikecount='"&unlikecount&"' WHERE id='"&blogid&"'"
            con.execute (sql)
            Response.Redirect(bloglink)
        ElseIf row="unlike" Then
            sql = "DELETE from likes WHERE id='"&likeid&"'"
            con.execute (sql)

            if unlikecount>0 then
            unlikecount = unlikecount - 1
            end if

            sql = "UPDATE blogs SET unlikecount='"&unlikecount&"' WHERE id='"&blogid&"'"
            con.execute (sql)
            Response.Redirect(bloglink)
        Else
            sql = "UPDATE likes SET islike='unlike' WHERE id='"&likeid&"'"
            con.execute (sql)

            unlikecount = unlikecount + 1
            if likecount>0 then
            likecount = likecount - 1
            end if

            sql = "UPDATE blogs SET unlikecount='"&unlikecount&"', likecount='"&likecount&"' WHERE id='"&blogid&"'"
            con.execute (sql)
            Response.Redirect(bloglink)
        end if
   end if
%>