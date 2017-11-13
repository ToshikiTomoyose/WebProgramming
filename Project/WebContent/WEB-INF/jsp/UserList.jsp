<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%@ page import="model.Userbean" %>
<%@ page import="java.util.List" %>

<!doctype html>
<html>
    <head>
    <meta charset="utf-8">
    <title>userlist</title>

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
                <p><a href="login.html">ログアウト&nbsp;&nbsp;<br></a></p></div>
            </section>

            <div align="right"> <a href="useradd.html">新規登録&nbsp;&nbsp;</a></div>
            <h1 align="center">ユーザ一覧</h1>
            <div class="container">
                <p align="center"> &nbsp;</p>
                <p class="text-left">&nbsp;ログインID　
                <input type="text" name="名前"></p>

                <p class="text-left">&nbsp;ユーザ名　　
                <input type="text" name="名前"></p>

                <form action="xxx.php" method="post">
                    <label>&nbsp;生年月日　　
                    <input type="date" name="date">～<input type="date" name="date"></label>
                    <input type="submit" value="検索">
                </form>


                <div class="table-responsive">
                    <table class="table table-bordered ">
                        <thead>
                            <tr>
                                <th width="10%"><div align="center">ログインid</div></th>
                                <th width="24%"><div align="center">ユーザ名</div></th>
                                <th width="29%">生年月日</th>
                                <th>&nbsp;</th>

                            </tr>
                        </thead>
<%
List<Userbean> ublist = (List<Userbean>)request.getAttribute("userlist");

%>

						<% for (Userbean userbean : ublist) {%>
                            <tbody>
	                         <tr>
                               <td><%= userbean.getLogin_id() %></td>
                                <td><%= userbean.getName() %></td>
                                <td><%= userbean.getBirth_date()%></td>
                                <td>
                                    <div align="center">
                                        <a class="btn btn-info" href="Userguide?id=<%= userbean.getId() %>" role="button">詳細</a>
                                        <a align="center" class="btn btn-primary" href="userup.html" role="button">更新</a>
                                        <a align="center" class="btn btn-danger" href="userdelete.html" role="button">削除</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
						<%} %>
                    </table>
                </div>
            </div>
        </body>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

    </body>
</html>
