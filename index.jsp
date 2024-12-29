<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relife：重生</title>
    <style>
        @import url("css/index.css");
    </style>
    <span style="font-size:18px;"></span> <span style="font-size:24px;">
        <meta http-equiv="refresh" content="10;URL=index2.jsp">
    </span>
</head>

<body>
    <iframe id="background_audio_start" src="audio/audio_load.mp3" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen></iframe>
    <table align="center" id="logo-table">
        <tr>
            <td>
                <img src="image/logo/S__5005315.png" id="logo">
            </td>
        </tr>
    </table>
    <div id="wel-text">
        如果……<br>
        有這樣一個地方<br>
        可以幫你的人生按下重啟鍵<br>
        你想不想試試看<br>
    </div>
    <div class="loading">
        <div id="load">

        </div>
    </div>
</body>

</html>