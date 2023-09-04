<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="ko">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="shortcut icon" href="/img/favicon.ico">
            <link rel="stylesheet" href="/css/common.css" />
            <title>Document</title>
            <style>

                /* 유튜브 크기조정해야함 */
                .boardView img {
                }
                @media screen and (max-width: 1239px) {
                    .boardView img {
                        max-width: 80%;
                        height: auto;
                    }
                }
                @media screen and (max-width: 1023px) {
                    .boardView img {
                        max-width: 50%;
                        height: auto;
                    }
                }
                @media screen and (max-width: 767px) {
                    .boardView img {
                        max-width: 50%;
                        height: auto;
                    }
                    .boardView iframe {
                        max-width: 320px;
                        height: 180px;
                    }
                }
                </style>
        </head>

        <body>
            <%@ include file="/WEB-INF/include/header.jsp" %>

            <div class="wrap">
                <div class="main">
                    <div style="display: flex; justify-content: center;">
                        <div class="boardView">
                            ${boardVo.cont}
                        </div>
                    </div>
                </div>
            </div>

            <%@ include file="/WEB-INF/include/footer.jsp" %>
        </body>
        <script>
        </script>

        </html>