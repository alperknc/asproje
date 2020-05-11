<!--#include file="header.asp"-->
<style type="text/css"> 

.post_form {
    width: 100%;
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
    left: 500px;
}

.post_form input[type="submit"]:active {
    padding: 5px 4px 4px 5px;
}

</style>

<%

        sql="SELECT * FROM users WHERE username='"&username&"'"
        Set register = con.execute (sql)
        Do While not register.eof
            id = register.fields("id")
            username1 = register.fields("username")
            email = register.fields("email")
            password = register.fields("password")

            register.movenext
        Loop


    if not isempty( Request.Form("post_post") ) Then
    
        username2 = Request.Form("kadi")
        email=Request.Form("email")
        password = Request.Form("password")


        sql1 = "UPDATE users SET email='"&email&"', password='"&password&"' where username='"&username&"'"
        con.execute (sql1)

        message = "Guncellendi"

        'Response.Redirect("profile.asp") 
        

    end if
%>


<br>
<center><h2>Profil Güncelle</h2></center>

<section class="blog-area section">
		<div class="container">

<div class="row">

                <div class="col-lg-12 col-md-6">
					<div class="card h-100">
						<div class="single-post post-style-1">

						<form class="post_form" action="profile.asp" method="POST">	
							<div class="blog-info">

                            
                                <div class="blog-image"> <h4>Kullanıcı Adı<h4></div> <br>

                            

                                <input type="text" name="kadi" placeholder="Kullanıcı Adı" value="<% response.write username %>" disabled> <br><br>

                                <div class="blog-image"> <h4>Email<h4></div> <br>

                                <input type="email" name="email" placeholder="Email" value="<% response.write email %>" required> <br><br>

                                <div class="blog-image"> <h4>Şifre<h4></div> <br>

                                <input type="password" name="password" placeholder="Şifre" value="<% response.write password %>" required> <br><br>
                            
                            
                                <input type="submit" name="post_post" id="post_button" value="Gönder">

                        </form>	        
                         <br> <br>   <br> <br> <h4 style="color: green;"><b> <% response.write message %> </b> </h4>

							</div>
						</div>
					</div>
				</div>
             </div>
	 