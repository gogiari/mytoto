<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
    <style>
        .header{
            background-color: #3CB371;
            display: grid;
            grid-template-columns: auto 1240px auto;
            grid-template-rows: auto;
        }
        .headerCenter{
            order: 2;
            display: grid;
            grid-auto-flow: column;
        }
        .menu{
            font-size: 25px;
            color: white;
        }
        .logo {
            display: grid;
            grid-template-columns: 50px 50px;
            grid-template-rows: auto auto;
            column-gap: 5px;
            text-decoration: none;
        }
        .menuLogo {
            height: 60px;
            display: none;
        }

        @media (max-width: 1239px) {
            .menu{
                color: red;
            }
            .header {
                grid-template-columns: auto;
            }
        }
        @media (max-width: 1023px) {
            .menu{
                color: orange;
            }
        }
        
        @media (max-width: 767px) {
            .menu{
                display: none;
            }
            .menuLogo{
                display: block;
            }
        }
        
    </style>
</head>
<body>
    <div class="header">
        <div style="order: 1;"></div>
        <div class="headerCenter">
            <a class="logo" href="/">
                <img style="grid-row: 1 / 3;" src="image/ball2.png" alt="logo">
                <span style="color: white; font-size: 18px; font-weight: bold;">Green</span>
                <span style="color: white; font-size: 18px; font-weight: bold;">Sports</span>
            </a>
            <div class="menu">
                <span>Community</span>
                <span>News</span>
                <span>Login</span>
            </div>
        </div>
        <div class="menuLogo">
            <box-icon name='menu' color='white' size="cssSize" ></box-icon>
        </div>
    </div>
</body>
</html>