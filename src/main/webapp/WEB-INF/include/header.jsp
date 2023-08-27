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
    <link rel="stylesheet" href="/css/common.css" />
    <style>
        :root{
            --css-variable : #3CB371; 
            --bagic-color : #3CB371;
        }
        .header{
            background-color: var(--css-variable);
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
            > * {
                font-size: 25px;
                color: white;
            }
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
            position: relative;
            z-index: 1002;
            background-color: var(--bagic-color);
        }
        .menu > a {
            text-decoration: none;
            /* color: white; */
        }
        .logobtn:hover {
            cursor: pointer;
        }

        .comuMenus{
            position: absolute;
            background-color: black;
            padding: 5px;
            border-radius: 15px;
            z-index: 1002;
            /* display: none; 여기에 넣으면 커뮤메뉴생성이안됬음 */
        }
        .sideMenus{
            overflow: hidden;
            position: fixed;
            right: 0;
            width: 0; height: 300px;
            float: right;
            transition: all 0.3s ease;
            background-color: white;
            border-bottom-left-radius: 30px;
        }
        .sideMenus > * {
            color: var(--bagic-color);
            text-decoration: none;
            font-size: 23px;
            font-weight: bold;
        }


        /* 스크린 사이즈에 따라 반응형 */
        @media screen and (max-width: 1239px) {
            .menu{
            }
            .header {
                grid-template-columns: auto;
            }
        }
        @media screen and (max-width: 1023px) {
            .menu{
                display: none;
            }
            .menuLogo {
                height: 52px;
                display: block;
                float: right;
            }
            .sideMenus {
                display: block;
            }
        }
        
        @media screen and (max-width: 767px) {
            .headerCenter {
                /* grid-template-columns: 1fr; */
            }
        }
        @keyframes logoAction {
            0% { transform: rotate(0deg);}
            33% { transform: rotate(-120deg);}
            66% { transform: rotate(-240deg);}
            100% { transform: rotate(-360deg); }
        }

        .logo > img {
            animation: logoAction 2s infinite;
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
                    <span class="comu" style="cursor: pointer;">Community</span>
                    <div class="comuMenus" style="display: none;">
                        <c:forEach var="menu" items="${ menuList }">
                            <span style="cursor: pointer;">${menu.menu_name}</span>
                        </c:forEach>
                    </div>
                </div>
                <span>News</span>
                <span>Login</span>
            </div>
            <div class="">
                <div class="menuLogo">
                    <div id="sideBtn" style="height: 100%;">
                        <box-icon id="hamberger" name='menu' color='white' size="lg" style="cursor: pointer;" ></box-icon>
                        <box-icon id="xBtn" name='x' color="white" size="lg" style="display: none; cursor: pointer;"></box-icon>
                    </div>
                    <div class="sideMenus" style="display: block;">
                        <a href="/"><p>Home</p></a>
                        <p>Community</p>
                        <p>News</p>
                        <p>Login</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="menuOther"></div>
</body>
<script>
    //로고 버튼 홈으로만들기
    let logobtns = document.querySelectorAll('.logobtn');
    logobtns.forEach(function (logobtn) {
        logobtn.addEventListener("click", function () {
            window.location.href = "/";
        })
    });
    // 커뮤니티 메뉴 버튼 이벤트
    document.querySelector('.comu').addEventListener("click", function(){
        // let comuMenus= document.querySelector('.comuMenus');
        // if(comuMenus.style.display == "none") {
            //     comuMenus.style.display = "block";
            // } else if( comuMenus.style.display == "block"){
                //     comuMenus.style.display = "none";
                // }
        // 어두운배경(menuOther)를 투명으로 해서 닫게 이용할것임
        document.querySelector(".menuOther").style.display = "block";
        document.querySelector(".menuOther").style.opacity = "0";
        comuMenus= document.querySelector('.comuMenus').style.display = "block"
    });
    // 1024px 미만 버튼 이벤트(모바일)
    // 햄버거클릭
    document.querySelector("#hamberger").addEventListener("click", function(){
        document.querySelector("#hamberger").style.display = "none";
        document.querySelector("#xBtn").style.display = "block";
        document.querySelector(".sideMenus").style.width = "200px";
        document.querySelector(".menuOther").style.display = "block";
        // document.querySelector(".sideMenus").style.display = "block";
        // if(document.querySelector(".sideMenus").style.display == "block"){
            //     document.querySelector(".sideMenus").style.width = "200px";
        // }
    });
    // 엑스버튼 클릭
    function CloseSideMenu() {
        document.querySelector("#xBtn").style.display = "none";
        document.querySelector("#hamberger").style.display = "block";
        document.querySelector(".sideMenus").style.width = "0px";
        document.querySelector(".menuOther").style.display = "none";
        // if(document.querySelector(".sideMenus").style.width == "0px"){
            //     document.querySelector(".sideMenus").style.display = "none";
        // }
        
    }
    document.querySelector("#xBtn").addEventListener("click", function (){
        CloseSideMenu();
});


// 커뮤니티 다른데 클릭하면 메뉴 닫기
// document.addEventListener("click", (event) => {
//     if(!document.querySelector('.comuMenus').contains(event.target) &&
//         !document.querySelector('.comu').contains(event.target)&&
//         !document.querySelector('.sideMenus').contains(event.target)&&
//         !document.querySelector('#hamberger').contains(event.target)
//         ){
//         document.querySelector('.comuMenus').style.display = "none";
//         CloseSideMenu();
//     }
// });

// 어두운 투명배경 클릭시 메뉴 닫기
document.querySelector('.menuOther').addEventListener("click", () => {
    document.querySelector(".menuOther").style.opacity = "0.7";
    comuMenus= document.querySelector('.comuMenus').style.display = "none"
    CloseSideMenu();
});

// 마우스 휠 이벤트
document.addEventListener("scroll", () => {
    CloseSideMenu();
});

    // 1024px 이하 토글만들기 참고 https://solog4something.tistory.com/71
</script>

</html>