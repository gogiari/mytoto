<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="ko">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="shortcut icon" href="/img/favicon.ico">
            <c:forEach var="menu" items="${menuList}">
                        <c:if test="${menu.menu_id eq param.menu_id}">
                            <title>${menu.menu_name}</title>
                            <c:set var="menu_name" value="${menu.menu_name}" />
                        </c:if>
                    </c:forEach>
            <style>
                .board {
                    padding: 10px 0;
                    background-color: whitesmoke;
                    border-top: 1px solid white;
                    border-bottom: 1px solid white;
                }
                .boardTitle {
                    font-size: 30px;
                }
            </style>
        </head>

        <body>
            <%@ include file="/WEB-INF/include/header.jsp" %>

            <div class="wrap">
                <div class="main">
                    <h2 style="display: flex; justify-content: center;">${menu_name}</h2>
                    <c:forEach var="board" items="${boardList}">
                        <div class="board" onclick="window.location.href='/board/view?idx=${board.idx}'">
                            <span>${board.idx}</span>
                            <span class="boardTitle">${board.title}</span>
                            <div>
                                <span style="float: right; width: 80px;">조회${board.readcount}</span>
                                <span style="float: right; width: 70px;">댓글${board.ccnt}</span>
                            </div>
                            <span style="font-weight: bold; padding: 0px 30px;">${board.writer}</span><span>${board.regdate}</span>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <%@ include file="/WEB-INF/include/footer.jsp" %>
        </body>

        </html>