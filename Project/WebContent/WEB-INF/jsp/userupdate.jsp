<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="model.Userbean" %>
<%@ page import="java.util.List" %>


<!doctype html>
<html>
    <head>
    <meta charset="utf-8">
    <title>ユーザー新規登録</title>

    <!-- BootstrapのCSS読み込み -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="userlan.css">

    <!-- jQuery読み込み -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="userlan.css">

    <!-- BootstrapのJS読み込み -->
    <script src="js/bootstrap.min.js"></script>


    </head>

        <body>
         <body>
        <% Userbean ub = (Userbean)request.getAttribute("ub");
		%>

            <body style="font-family: 'ＭＳ 明朝'">
                <section>
                    <div class="text-right">ユーザ名&nbsp;&nbsp;
                        <p><a href="login.html">ログアウト&nbsp;&nbsp;<br></a></p>
                    </div>
                </section>

                <div align="center">
				<form action="UserUpdate" method="post">
                    <h1 class="text-center">ユーザ情報更新</h1>
                    <p align="center">&nbsp;</p>

					<input type="hidden" value="<%= ub.getId() %>" name = "upid">

                    <dt>&nbsp;ログインID</dt>
                        <input type="text" value="<%= ub.getLogin_id() %>" name = "updlogid">
                    <p class="form-control-static static-padding">

                    <dt>&nbsp;パスワード</dt>
                        &nbsp;<input type="text" value="<%= ub.getPass() %>" name = "updpass">
                    <p class="form-control-static static-padding">

                    <dt>&nbsp;パスワード（確認）</dt>
                        &nbsp;<input type="text" value="<%= ub.getPass() %>" name = "updpass">
                    <p class="form-control-static static-padding">

                    <dt>&nbsp;ユーザ名</dt>
                        &nbsp;<input type="text" value="<%= ub.getName() %>" name = "updname">
                    <p class="form-control-static static-padding">

                    <dt>&nbsp;生年月日</dt>
                        &nbsp;<input type="date" value="<%= ub.getBirth_date() %>" name = "updbirthd">

					<input type="hidden" value="<%= ub.getUpdate_date() %>" name = "upddate">

					<p>&nbsp;</p>
				 	<p align="center">
					<input type="submit" value="更新" class="btn btn-primary btn-lg">
               		</p>

						</form>
					<p>&nbsp;</p>
                    <div class="text-center"><a href="UserList">&nbsp;戻る</a></div>
					 </div>
                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        </body>
    </body>
</html>
