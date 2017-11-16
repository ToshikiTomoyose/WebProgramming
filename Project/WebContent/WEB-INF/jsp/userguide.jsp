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
        <!-- jQuery読み込み -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="userlan.css">
        <!-- BootstrapのJS読み込み -->
        <script src="js/bootstrap.min.js"></script>
    </head>

        <body>
        <% Userbean ub = (Userbean)request.getAttribute("ub");
		%>

            <body style="font-family: 'ＭＳ 明朝'">
                <section>
                    <div class="text-right">ユーザ名&nbsp;&nbsp;
                        <p><a href="login.html">ログアウト&nbsp;&nbsp;<br></a></p>
                    </div>
                </section>
                <h1 align="center">ユーザ情報詳細参照</h1>
                <div class="container" align="center">
                    <p align="center">&nbsp;</p>
                    <dt>&nbsp;ユーザID</dt>
                    <dd>&nbsp;<%= ub.getId() %></dd>

                    <p class="form-control-static static-padding">
                    <dt>&nbsp;ユーザ名</dt>
                    <dd>&nbsp;<%= ub.getName() %></dd>

                    <p class="form-control-static static-padding">
                    <dt>&nbsp;生年月日</dt>
                    <dd>&nbsp;<%= ub.getBirth_date() %></dd>

                    <p class="form-control-static static-padding">
                    <dt>&nbsp;登録日時</dt>
                    <dd>&nbsp;<%= ub.getCreate_date() %></dd>

                    <p class="form-control-static static-padding">
                    <dt>&nbsp;更新日時</dt>
                    <dd>&nbsp;<%= ub.getUpdate_date() %></dd></p>


                    <a href="UserList?id=<%= ub.getId() %>">&nbsp;戻る</a>

                </div>
            </body>
        </body>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</html>