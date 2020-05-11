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
    if not username="alp" then
    Response.Redirect("index.asp") 
    end if

    blogid=Request.QueryString("id") 

    Response.Write blogid
    sql="SELECT * FROM blogs WHERE id='"&blogid&"'"
    Set kayitlar = con.execute (sql)  

    Do While not kayitlar.eof 
                id = kayitlar.fields("id")
                username = kayitlar.fields("username")
                text = kayitlar.fields("text")
                deleted= kayitlar.fields("deleted")
                title = kayitlar.fields("title")
                likecount= kayitlar.fields("likecount")
                unlikecount= kayitlar.fields("unlikecount")
           
    kayitlar.movenext
    Loop

    if not isempty( Request.Form("post_post") ) Then
    
        'username = Session("username")
        idsi=Request.Form("idsi")
        title1=Request.Form("title1")
        body1 = Request.Form("text_body1")

        'Response.Write title1

        sql1 = "UPDATE blogs SET username='"&username&"', text='"&body1&"', title='"&title1&"', likecount='"&likecount&"', unlikecount='"&unlikecount&"', commentcount='"&commentcount&"' where id='"&idsi&"'"
        con.execute (sql1)

        Response.Redirect("update.asp") 

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

						<form class="post_form" action="updatepost.asp" method="POST">	
							<div class="blog-info">
                                <div class="blog-image"> <h4>Başlık<h4></div> <br>

                                <input type="text" name="title1" placeholder="Başlık" value="<% response.write title %>" required> <br><br>

                                <div class="blog-image"> <h4>İçerik<h4></div> 
                                <div class="main_colmn column">
                            <br>
                            <textarea name="text_body1" id="text_body" placeholder="Düşüncelerini gönder"><% response.write text %></textarea> 
                               <input type="hidden" name="idsi" value="<% response.write blogid %>">
                                <input type="submit" name="post_post" id="post_button" value="Gönder">
                            </div>    

                        </form>	        
                            

                                
                                

							</div>
						</div>
					</div>
				</div>
             </div>
	 