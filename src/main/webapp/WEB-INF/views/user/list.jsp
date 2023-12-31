<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>userlist</title>
    <link rel="stylesheet" href="/css/common.css">
</head>
<body>
    <%@ include file="/WEB-INF/include/header.jsp" %>
    <div class="wrap">
        <div class="main">
            <h2>User List</h2>
            <table>
                <tr>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>이메일</th>
                    <th>가입일</th>
                </tr>
                <c:forEach var="user" items="${ userList }">
    
                    <tr>
                        <td>${ user.userid }</td>
                        <td>${ user.username }</td>
                        <td>${ user.email }</td>
                        <td>${ user.indate }</td>
                    </tr>
                </c:forEach>
                <c:forEach var="menu" items="${ menuList}">
                    <span>${ menu.menu_name}</span>
                </c:forEach>
            </table>
        </div>
    </div>

    <%@ include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>