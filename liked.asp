<!--#include file="header.asp"-->
<br>
<center><h2>Favori Listem</h2></center>

<%
 sql="SELECT * FROM likes WHERE username='"&username&"' and islike='like' order by id desc"
        Set register0 = con.execute (sql)
        Do While not register0.eof
            likeid= register0.fields("id")
            username1 = register0.fields("username")
            blogid = register0.fields("blogid")
 

                sql="SELECT * FROM blogs WHERE deleted='no' and id='"&blogid&"' order by id desc"
                Set kayitlar = con.execute(sql)



%>
	<section class="blog-area section">
		<div class="container">

			<div class="row">
<%  
				Do While not kayitlar.eof
                id = kayitlar.fields("id")
                username = kayitlar.fields("username")
                title = kayitlar.fields("title")
                likecount= kayitlar.fields("likecount")
                unlikecount= kayitlar.fields("unlikecount")
                commentcount=kayitlar.fields("commentcount")
                
                rows = 0
                rows1 = 0
                sql1="SELECT * FROM likes WHERE username='"&username&"' and blogid='"&id&"' order by id desc"
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


%>
	<div class="col-lg-12 col-md-6">
					<div class="card h-100">
						<div class="single-post post-style-1">

							<div class="blog-image"> <% response.write username %> </div>
							<div class="blog-info">

								<h4 class="title"><a href="blog.asp?id=<%response.write id%>"><b><%response.write title%></b></a></h4>

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

 register0.movenext
Loop     


%>
				
</body>
</html>

<%

%>