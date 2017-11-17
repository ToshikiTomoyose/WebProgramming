<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="model.Userbean" %>

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
        <body style="font-family: 'ＭＳ 明朝'">
            <section>
                <div class="text-right">ユーザ名&nbsp;&nbsp;
                    <p><a href="login.html">ログアウト&nbsp;&nbsp;<br></a></p>
                </div>
            </section>

            <h1 class="text-center">ユーザ新規登録</h1>

            <p align = "center">${errMsg}</p>

            <form action="Usercreate" method="post">
                <p>&nbsp;</p>
                <p class="text-center">ログインID　　　　　
                <input type="text" name="clogid"></p>

                <p class="text-center">パスワード　　　　　
                <input type="text" name="cpass"></p>

                <p class="text-center">パスワード（確認）　
                <input type="text" name="cpass"></p>

                <p class="text-center">ユーザー名　　　　　
                <input type="text" name="cname"></p>

                <p class="text-center">生年月日 　 	　　　　
                <input type="date" name="cbirthd"></p>

                 <p align="center">
			                	<input type="submit" value="新規登録" class="btn btn-primary btn-lg">
               	</p>
            </form>

            <div class="text-center"><a href="UserList">&nbsp;戻る</a></div>

            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        </body>
    </body>
</html>
