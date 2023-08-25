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
        .menu > a {
            text-decoration: none;
            color: white;
        }
        .logobtn:hover {
            cursor: pointer;
        }

        @media screen and (max-width: 1239px) {
            .menu{
                color: red;
            }
            .header {
                grid-template-columns: auto;
            }
        }
        @media screen and (max-width: 1023px) {
            .menu{
                color: orange;
            }
        }
        
        @media screen and (max-width: 767px) {
            .headerCenter {
                grid-template-columns: 1fr;
            }
            .menu{
                display: none;
            }
            .menuLogo{
                height: 52px;
                display: block;
                float: right;
            }
        }
        
    </style>
</head>
<body>
    <div class="header">
        <div style="order: 1;"></div>
        <div class="headerCenter">
            <div class="logo">
                <img class="logobtn" style="grid-row: 1 / 3;" src="/image/ball2.png" alt="logo">
                <span class="logobtn" style="color: white; font-size: 18px; font-weight: bold;">Green</span>
                <span class="logobtn" style="color: white; font-size: 18px; font-weight: bold;">Sports</span>
            </div>
            <div class="menu">
                <a href="/" style="float: left; margin: 0 20px;"><span>Home</span></a>
                <div style="float: left; margin: 0 20px;">
                    <span class="comu">Community</span>
                    <div class="comuMenus clickClose" style="position: absolute; background-color: black; display: none;">dhdh</div>
                </div>
                <span>News</span>
                <span>Login</span>
            </div>
            <div class="menuLogo">
                <box-icon class="menuLogo" name='menu' color='white' size="lg" ></box-icon>
            </div>
        </div>
    </div>
</body>
<script>
    //로고 버튼 홈으로만들기
    let logobtns = document.querySelectorAll('.logobtn');
    logobtns.forEach(function (logobtn) {
        logobtn.addEventListener("click", function () {
            window.location.href = "/";
        })
    });
    // 커뮤니티 메뉴 버튼 나오게하기
    document.querySelector('.comu').addEventListener("click", function(){
        let comuMenus= document.querySelector('.comuMenus');
        if(comuMenus.style.display == "none") {
            comuMenus.style.display = "block";
        } else if( comuMenus.style.display == "block"){
            comuMenus.style.display = "none";
        }
    });

    // 커뮤니티 다른데 클릭하면 메뉴 닫기

    // 1024px 이하 토글만들기 참고 https://solog4something.tistory.com/71
</script>

</html>