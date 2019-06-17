<%@ page import="com.mysql.cj.protocol.Resultset" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Feed" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Feeds</title>
    <link rel="stylesheet" href="css/feeds.css">
</head>
<body>
<%--<h1>List of feeds</h1>
<c:forEach items="${requestScope.get('feeds')}" var="feed">
    <div class="row card">
        <div class="col-md-12">
            <a href="/feeds/${feed.getId()}">
                <h3>${feed.getTitle()}</h3>
            </a>
        </div>
    </div>
</c:forEach>--%>

<div class="topnav">
    <span id="title">JustAsk!</span>
    <a href="logout">Logout</a>
    <a href="profile">Profile</a>
    <a class="active" href="feed">Home</a>

</div>

<div id="category">
    Categories
    <ul id="categoryList">
        <li><a href="#">Programming</a></li>
        <li><a href="#">Cooking</a></li>
        <li><a href="#">Travel</a></li>
        <li><a href="#">Bikes</a></li>
    </ul>
</div>

<div id="feedDisplayArea">


    <form action="question" method="POST">
        <!--<textarea name="questiontitle" id="questiontitle" cols="100" rows="8" placeholder="Post your query"></textarea>-->
        <input type="text" name="questiontitle" id="questiontitle" placeholder="    Post your query">
        <input type="text" name="tag" id="tag" placeholder="    Insert tags">
        <button id="justaskbtn" type="submit">JustAsk</button>
    </form>
</div>

<div id="questionAnswerDisplayArea">
    <p>Question Answers goes here</p>
</div>
</body>
</html>
