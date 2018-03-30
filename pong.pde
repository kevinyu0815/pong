<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">

		div.outside{
			padding-top: 75px;
			padding-bottom: 30px;
			height:540px;
			border-bottom: 3px solid grey; 
		}

		div.last{
			margin-bottom: 40px;
			border: none;
		}

		div.game{
			position: relative;
			box-sizing: border-box;
			padding: 20px;
			width:65%;
			vertical-align: middle;
			transition: 0.5s;
			height: 100%;
			/*border: 1px solid black;*/
		}
		.game:hover{
			transition: 0.5s;
			background-color: #CEE8F0;
		}
		iframe{
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			border: none;
			display: block;
			margin:  auto;
		}


		body{
			font-family: 微軟正黑體;
			background-color: lightblue;
			margin: 0px;
			
		}
		ul{
			list-style-type: none;
			padding: 0px;
			margin: 0px;
			width: 100%;
			overflow: hidden;
			background-color: #f1f1f1;
			position: fixed;
			top: 0px;
			z-index: 1;

		}
		li{
			float: left;
		}
		li a{
			padding: 16px 30px;
			display: block;
			color: black;
			text-align: center;
			text-decoration: none;
			transition: 0.2s;
		}
		li a:hover{
			background-color: #777;
    		color: white;
		}

		li a.active{
			background-color: pink;
			color: black;
		}
	</style>
</head>
<body>
	<ul>
		<li><a class="active" href="#groundhog">土撥鼠撞撞記</a></li>
		<li><a href="#ghost">小鬼向下衝</a></li>
		<li><a href="#light">關燈吧!</a></li>
		<li><a href="#aqua">我的水族箱</a></li>
		<li><a href="#pong">打桌球</a></li>
		<li><a href="#balloon">熱氣球過山坡</a></li>
	</ul>

	<div id="groundhog" class="outside">
		<div class="game">
			<iframe src="https://nccuprogramming101.github.io/20171-assign6-kevinyu0815/" width="660" height="500"></iframe>
		</div>
	</div>

	<div id="ghost" class="outside">
		<div class="game">
			<iframe src="https://kevinyu0815.github.io/ghost/" width="620" height="520"></iframe>
		</div>
	</div>

	<div id="light" class="outside">
		<div class="game">
			<iframe src="https://kevinyu0815.github.io/turnofflight/" width="420" height="420"></iframe>
		</div>
	</div>

	<div id="aqua" class="outside">
		<div class="game">
			<iframe src="https://kevinyu0815.github.io/aqua/" width="620" height="470"></iframe>
		</div>
	</div>

	<div id="pong" class="outside">
		<div class="game">
			<iframe src="https://kevinyu0815.github.io/pong/" width="660" height="460"></iframe>
		</div>
	</div>

	<div id="balloon" class="outside last">
		<div class="game">
			<iframe src="https://kevinyu0815.github.io/balloon/" width="820" height="320"></iframe>
		</div>
	</div>
	
</body>
</html>
