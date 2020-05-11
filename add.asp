<!--#include file="header.asp"-->
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
    if not isempty( Request.Form("post_post") ) Then
    
        username = Session("username")
        title=Request.Form("title")
        body = Request.Form("text_body")


        sql1 = "INSERT INTO blogs (username,text,deleted,title) VALUES ('"&username&"','"&body&"','no', '"&title&"')"
        con.execute (sql1)

        Response.Redirect("index.asp") 

    end if
%>


<br>
<center><h2>Yeni Post</h2></center>

<section class="blog-area section">
		<div class="container">

<div class="row">

                <div class="col-lg-12 col-md-6">
					<div class="card h-100">
						<div class="single-post post-style-1">

						<form class="post_form" action="add.asp" method="POST">	
							<div class="blog-info">
                                <div class="blog-image"> <h4>Başlık<h4></div> <br>

                                <input type="text" name="title" placeholder="Başlık" value="" required> <br><br>

                                <div class="blog-image"> <h4>İçerik<h4></div> 
                                <div class="main_colmn column">
                            <br>
                            <textarea name="text_body" id="text_body" placeholder="Düşüncelerini gönder"></textarea> 
                                
                                <input type="submit" name="post_post" id="post_button" value="Gönder">

                        </form>	        
                            </div>

                                
                                

							</div>
						</div>
					</div>
				</div>
             </div>
		</div>   