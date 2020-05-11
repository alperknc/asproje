<!--#include file="header.asp"-->

<%
        bloglink= "blog.asp?id=" + blogid
        




%>

<style type="text/css"> 

.post_form {
    width: 100%;
}

.post_form textarea {
    width: 70%;
    height: 60px;
    border-radius: 3px;
    margin-right: 5px;
    border: 1px solid #D3D3D3;
    font-size: 12px;
    padding: 5px;
}

textarea:focus {
    outline: 0;
}

.post_form input[type="submit"] {
    width: 10%;
    height: 30px;
    height: 60px;
    border: none;
    border-radius: 3px;
    background-color: #fff;
    border-right: solid #9da6af;
    border-left: solid #9da6af;
    font-family: 'Bellota-BoldItalic', sans-serif;
    color: black;
    text-shadow: #73B6E2 0.5px 0.5px 0px;
    font-size: 90%;
    position: absolute;
    outline: 0;
    margin: 0;
}

.post_form input[type="submit"]:active {
    padding: 5px 4px 4px 5px;
}

</style>

<%
    blogid=Request.QueryString("id") 

    sql="SELECT * FROM blogs WHERE id='"&blogid&"'"
    Set kayitlar = con.execute (sql)  

    rows = 0
                rows1 = 0
                sql1="SELECT * FROM likes WHERE username='"&username&"' and blogid='"&blogid&"'"
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

<section class="blog-area section">
		<div class="container">
<%
    Do While not kayitlar.eof
                id = kayitlar.fields("id")
                username = kayitlar.fields("username")
                text = kayitlar.fields("text")
                title = kayitlar.fields("title")
                likecount= kayitlar.fields("likecount")
                unlikecount= kayitlar.fields("unlikecount")
                commentcount=kayitlar.fields("commentcount")


%>
			<div class="row">

                <div class="col-lg-12 col-md-6">
					<div class="card h-100">
						<div class="single-post post-style-1">

							<div class="blog-image"> <h3>ekleyen : <% response.write username %> <h3></div>
							<div class="blog-info">

								<h4 class="title"><a href="blog.asp?id=<%response.write id%>"><b><%response.write title%></b></a></h4>

                                <p> <%response.write text%> </p>
                                <br>
								<ul class="post-footer">
									<li>
                                        <a href="bloglike.asp?operation=like&id=<%response.write id%>">
                                            <i class="fa<%if rows>0 Then Response.Write "s " else Response.Write "r " end if%>fa-heart"></i>
                                            <% response.write likecount %>
                                        </a>   
                                    </li>
									<li><a href="bloglike.asp?operation=unlike&id=<%response.write id%>">
                                        <i class="fa<%if rows1>0 Then Response.Write "s " else Response.Write "r " end if%>fa-angry"></i>
                                            <% response.write unlikecount %>
                                        </a></li>
									<li><a href="#"><i class="fas fa-comments"></i><% response.write commentcount %></a></li>
								</ul>

							</div>
						</div>
					</div>
				</div>
                <div class="col-lg-12 col-md-6">
                    <div class="card h-100">
                         <div class="single-post post-style-1" >
                            
                            <div class="main_colmn column">
                            <br>
                                <form class="post_form" action="comment.asp" method="POST">
                                    <textarea name="post_text" id="comment_body" placeholder="Düşüncelerini gönder"></textarea>
                                    
                                    <input type="hidden" name="comment_post1" value="">
                                    <input type="hidden" name="blogid" value="<%response.write id%>">
                                    <input type="submit" name="comment_post" id="post_button" value="Gönder">
                                    
                                </form>

                            </div>
                            <%
                                sql="SELECT * FROM comments WHERE blogid='"&blogid&"' order by id desc"
                                Set kayitlar1 = con.execute (sql)  

                                Do While not kayitlar1.eof
                                    id = kayitlar1.fields("id")
                                    username = kayitlar1.fields("username")
                                    comment = kayitlar1.fields("comment")

                            %>

                                    
                               <div class="card h-100">
                                    <div class="single-post post-style-1">

                                        <div class="blog-image"> <h4>yorum sahibi : <b> <% response.write username %> </b> <h4></div> <br>
                                            <div class="blog-info">
                                                <p> <%response.write comment%> </p>
                                                <br>
                                                <ul class="post-footer">
                                                    <li>
                                                        <a href="like.asp?operation=like&id=<%response.write id%>">
                                                            <i class="far fa-heart"></i>
                                                            <% response.write likecount %>
                                                        </a>   
                                                    </li>
                                                    <li><a href="like.asp?operation=unlike&id=<%response.write id%>">
                                                        <i class="fas fa-angry"></i>
                                                            <% response.write likecount %>
                                                        </a></li>
                                                </ul>

                                        </div>
                                    </div>
                                </div>
                            <%
                                kayitlar1.movenext
                                Loop
                            %>
                            

                         </div>
                    </div>
                </div>

  <%                
	kayitlar.movenext
Loop
%>              
            </body>
</html>    