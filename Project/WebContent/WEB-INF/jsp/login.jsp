<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!doctype html>
	<html>
	    <head>
	        <meta charset="utf-8">
	        <meta http-equiv="X-UA-Compatible" content="IE=edge">
	        <meta name="viewport" content="width=device-width, initial-scale=1">
	        <title>ログイン画面</title>

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
		        <form action="Login" method="post">

		            <p align="center">&nbsp;</p>
		            <h1 class="text-center">ログイン画面</h1>
		            <p align = "center">${errMsg}</p>

		                <p align="center">&nbsp;</p>
		                <p align="center">ログインID　<input type="text" name="id"></p>
		                <p align="center">パスワード　<input type="text" name="pass"></p>
		                    <p align="center">&nbsp;</p>
		                <p align="center">
		                	<input type="submit" value="ログイン" class="btn btn-info btn-lg">
		                </p>
                </form>
	        </body>
		        <!-- Optional JavaScript -->
		    	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
					<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

		    </body>
	</html>