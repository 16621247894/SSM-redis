<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title></title>
        <style>
            .alarm {
                position: relative;
                width: 60px;
                height: 60px;
                margin: 60px;
            }
            .alarm img {
                width: 60px;
                height: 60px;
            }
            .divright {
                position: absolute;
                color: white;
                font-size: 17px;
                background-color: red;
                width: 23px;
                height: 23px;
                line-height: 23px;
                left: 80%;
                top: -12px;
                text-align: center;
                -webkit-border-radius: 24px;
                border-radius: 24px;
            }
        </style>
    </head>
<body>
        <div class="alarm">
            <img src="img/1.png" />
            <div class="divright">
                3
            </div>
        </div>
    </body>

</html>