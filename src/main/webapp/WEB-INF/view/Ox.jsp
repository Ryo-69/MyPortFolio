<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.Ox,model.OxLogic"%>
    <%
    Ox ox = (Ox)session.getAttribute("ox");
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css"/>
<!-- にこ文字とはんなりとニクキュウ -->
<link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/hannari.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/nikukyu.css" rel="stylesheet">
<title>nekogao</title>
</head>
<body>

<h1 class="t_Ox">ねこがお○☓ゲーム</h1>
<div class="nico">○×ゲームで遊ぼう！埋めたいマスをクリックしてね！</div>
<%if(ox.getB()>10){ %>
	<h3 class="nico">そこまで！！</h3>
	<%if(ox.getB() == 77){ %>
	<div class="kira">＜Fin.＞あなたの勝ちです！！</div>
	<%}else if(ox.getB() == 55){ %>
	<div>＜Fin.＞引き分けです</div>
	<%}else{%>
	<div>＜Fin.＞負け・・・</div>
	<% }%>
	<a href="/MyPortFolio/Oxc"><button class="startbtn" style="background-color:#0094c8">もう一度遊ぶ</button></a>
<% }%>
<table class="Ox_table" border="1">
	<tr>
		<%if(ox.getBelt()[0] == 77){ %>
		<td class="Ox_td"><img alt="neko" src="/MyPortFolio/img/neko.png">
		<% }else if(ox.getBelt()[0] == 11){%>
		<td class="Ox_td"><img alt="innu" src="/MyPortFolio/img/jinmenken.png">
		<%}else{ %>
		<td class="Ox_td"><form action="/MyPortFolio/Oxc" method="post">
		<input type="image" src="/MyPortFolio/img/white.png">
		<input type="hidden" name="maru" value="0">
		</form></td>
		<%} %>
		<%if(ox.getBelt()[1] == 77){ %>
		<td class="Ox_td"><img alt="neko" src="/MyPortFolio/img/neko.png">
		<% }else if(ox.getBelt()[1] == 11){%>
		<td class="Ox_td"><img alt="innu" src="/MyPortFolio/img/jinmenken.png">
		<%}else{ %>
		<td class="Ox_td"><form action="/MyPortFolio/Oxc" method="post">
		<input type="image" src="/MyPortFolio/img/white.png">
		<input type="hidden" name="maru" value="1">
		</form></td>
		<%} %>
		<%if(ox.getBelt()[2] == 77){ %>
		<td class="Ox_td"><img alt="neko" src="/MyPortFolio/img/neko.png">
		<% }else if(ox.getBelt()[2] == 11){%>
		<td class="Ox_td"><img alt="innu" src="/MyPortFolio/img/jinmenken.png">
		<%}else{ %>
		<td class="Ox_td"><form action="/MyPortFolio/Oxc" method="post">
		<input type="image" src="/MyPortFolio/img/white.png">
		<input type="hidden" name="maru" value="2">
		</form></td>
		<%} %>
	</tr>
	<tr>
		<%if(ox.getBelt()[3] == 77){ %>
		<td class="Ox_td"><img alt="neko" src="/MyPortFolio/img/neko.png">
		<% }else if(ox.getBelt()[3] == 11){%>
		<td class="Ox_td"><img alt="innu" src="/MyPortFolio/img/jinmenken.png">
		<%}else{ %>
		<td class="Ox_td"><form action="/MyPortFolio/Oxc" method="post">
		<input type="image" src="/MyPortFolio/img/white.png">
		<input type="hidden" name="maru" value="3">
		</form></td>
		<%} %>
		<%if(ox.getBelt()[4] == 77){ %>
		<td class="Ox_td"><img alt="neko" src="/MyPortFolio/img/neko.png">
		<% }else if(ox.getBelt()[4] == 11){%>
		<td class="Ox_td"><img alt="innu" src="/MyPortFolio/img/jinmenken.png">
		<%}else{ %>
		<td class="Ox_td"><form action="/MyPortFolio/Oxc" method="post">
		<input type="image" src="/MyPortFolio/img/white.png">
		<input type="hidden" name="maru" value="4">
		</form></td>
		<%} %>
		<%if(ox.getBelt()[5] == 77){ %>
		<td class="Ox_td"><img alt="neko" src="/MyPortFolio/img/neko.png">
		<% }else if(ox.getBelt()[5] == 11){%>
		<td class="Ox_td"><img alt="innu" src="/MyPortFolio/img/jinmenken.png">
		<%}else{ %>
		<td class="Ox_td"><form action="/MyPortFolio/Oxc" method="post">
		<input type="image" src="/MyPortFolio/img/white.png">
		<input type="hidden" name="maru" value="5">
		</form></td>
		<%} %>
	</tr>
	<tr>
		<%if(ox.getBelt()[6] == 77){ %>
		<td class="Ox_td"><img alt="neko" src="/MyPortFolio/img/neko.png">
		<% }else if(ox.getBelt()[6] == 11){%>
		<td class="Ox_td"><img alt="innu" src="/MyPortFolio/img/jinmenken.png">
		<%}else{ %>
		<td class="Ox_td"><form action="/MyPortFolio/Oxc" method="post">
		<input type="image" src="/MyPortFolio/img/white.png">
		<input type="hidden" name="maru" value="6">
		</form></td>
		<%} %>
		<%if(ox.getBelt()[7] == 77){ %>
		<td class="Ox_td"><img alt="neko" src="/MyPortFolio/img/neko.png">
		<% }else if(ox.getBelt()[7] == 11){%>
		<td class="Ox_td"><img alt="innu" src="/MyPortFolio/img/jinmenken.png">
		<%}else{ %>
		<td class="Ox_td"><form action="/MyPortFolio/Oxc" method="post">
		<input type="image" src="/MyPortFolio/img/white.png">
		<input type="hidden" name="maru" value="7">
		</form></td>
		<%} %>
		<%if(ox.getBelt()[8] == 77){ %>
		<td class="Ox_td"><img alt="neko" src="/MyPortFolio/img/neko.png">
		<% }else if(ox.getBelt()[8] == 11){%>
		<td class="Ox_td"><img alt="innu" src="/MyPortFolio/img/jinmenken.png">
		<%}else{ %>
		<td class="Ox_td"><form action="/MyPortFolio/Oxc" method="post">
		<input type="image" src="/MyPortFolio/img/white.png">
		<input type="hidden" name="maru" value="8">
		</form></td>
		<%} %>
	</tr>
</table>

<a href="/MyPortFolio/Main.jsp"><button>ゲームを止めてトップへ戻る</button></a><br>

</body>
</html>