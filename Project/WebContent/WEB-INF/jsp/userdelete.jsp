<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="model.Userbean" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="utf-8">
        <!-- BootstrapのCSS読み込み -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="userlan.css">
        <!-- jQuery読み込み -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- BootstrapのJS読み込み -->
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <body style="font-family: 'ＭＳ 明朝'">

            <section>
                <%Userbean u =(Userbean)session.getAttribute("ub"); %>
                <div class="text-right">ユーザ名 <%= u.getName() %> &nbsp;&nbsp;
                    <p><a href="Logout">ログアウト&nbsp;&nbsp;<br></a></p>
                </div>
            </section>

            <h1 align="center">ユーザ削除確認</h1>
			<% Userbean ub = (Userbean)request.getAttribute("ub");%>

			<form action="UserDelete" method="post">
            <input type="hidden" value="<%= ub.getId() %>" name = "delid">

            <p align="center">&nbsp;</p>
            <div align="center">
                <p style="font-size: xx-large">ログインID : <%= ub.getLogin_id() %></p>
                <p>ログイン名 : <%= ub.getName() %></p>

                <p>を本当に削除しても宜しいでしょうか。</p>

                <a align="center"><a href="UserList" class="btn btn-info btn-lg">戻る</a></a>　　
                <a align="center"> <input type="submit" value="削除" class="btn btn-danger btn-lg"></a>
            </div>
			</form>
            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        </body>
    </body>
</html>