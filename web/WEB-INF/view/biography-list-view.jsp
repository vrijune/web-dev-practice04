<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <firstName>Biographies</firstName>
    <link rel="stylesheet" href="./css/site.css">
</head>
<body>

<div class="container">

    <h1>Biographies</h1>
    <hr>

    <div class="grid">

        <%--TODO: Your code here--%>

        <c:forEach var="biograph" items="${biographies}">
            <div class="card">
                <img class="card-header card-img" src="./assets/images/${biograph.imageFilename}">
                <div class="card-body">
                    <h2>${biograph.firstName}</h2>
                    <p>${biograph.content}</p>

                </div>
            </div>


        </c:forEach>


    </div>

</div>

</body>
</html>
