<!--#include file="header.asp"-->

<br>
<center><h2>Anasayfa</h2></center>

<%
if Session("username")="alp" then
    


sql="SELECT * FROM blogs order by id desc"
Set kayitlar = con.execute (sql)



%>
	<section class="blog-area section">
		<div class="container">

			<div class="row">
<%  
				Do While not kayitlar.eof
                id = kayitlar.fields("id")
                username = kayitlar.fields("username")
                title = kayitlar.fields("title")
                deleted = kayitlar.fields("deleted")
                likecount= kayitlar.fields("likecount")
                unlikecount= kayitlar.fields("unlikecount")
                commentcount=kayitlar.fields("commentcount")
                
                rows = 0
                rows1 = 0
                sql1="SELECT * FROM likes WHERE username='"&username&"' and blogid='"&id&"'"
                Set register = con.execute (sql1)
                Do While not register.eof
                    islike = register.fields("islike")

                    if islike="like" then                            
                    rows = rows + 1
                    
                    else
                    rows1 = rows +1
                    end if
                    register.movenext
               Loop

               operation=Request.QueryString("operation") 
                blogid=Request.QueryString("id") 

                 If operation="close"Then
                    sql = "UPDATE blogs SET deleted='yes' WHERE id='"&blogid&"'"
                    con.execute (sql)
                    Response.Redirect("update.asp")
                 end if

                 If operation="open"Then
                    sql = "UPDATE blogs SET deleted='no' WHERE id='"&blogid&"'"
                    con.execute (sql)
                    Response.Redirect("update.asp")
                 end if


%>
	<div class="col-lg-4 col-md-6">
					<div class="card h-100">
						<div class="single-post post-style-1">

							<div class="blog-image"> <% response.write username %> </div>
							<div class="blog-info">

								<h4 class="title"><a href="blog.asp?id=<%response.write id%>"><b><%response.write title%></b></a></h4>

                               <a href="updatepost.asp?id=<%response.write id%>"> <button type="button" class="btn btn-warning">Güncelle</button> </a>
                                
                              
                                <a href="update.asp?operation=<%if deleted="no" Then Response.Write "close" else Response.Write "open" end if%>&id=<%response.write id%>">
                                        <button type="button" class="btn btn-<%if deleted="no" Then Response.Write "danger" else Response.Write "success" end if%>">
                                            <%if deleted="no" Then Response.Write "Kapat" else Response.Write "Ac" end if%>
                                        </button> 
                                </a>
                            
                                <br><br>
                                

								<ul class="post-footer">
									<li>
                                        <a href="like.asp?operation=like&id=<%response.write id%>">
                                            <i class="fa<%if rows>0 Then Response.Write "s " else Response.Write "r " end if%>fa-heart"></i>
                                            <% response.write likecount %>
                                        </a>   
                                    </li>
									<li><a href="like.asp?operation=unlike&id=<%response.write id%>">
                                        <i class="fa<%if rows1>0 Then Response.Write "s " else Response.Write "r " end if%>fa-angry"></i>
                                            <% response.write unlikecount %>
                                        </a></li>
									<li><a href="#"><i class="fas fa-comments"></i><% response.write commentcount %></a></li>
								</ul>

							</div>
						</div>
					</div>
				</div>
<%                
	kayitlar.movenext
Loop
%>
				
</body>
</html>



<%
else

Response.Redirect("index.asp") 
 end if %>