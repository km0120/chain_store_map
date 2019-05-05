<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>チェーン店一覧マップ</title>
        <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h1>チェーン店一覧マップ</h1>
            </div>
            <div id="content">
                ${param.content}
            </div>
        <p>マップ表示</p>
            <div id="map" style="width: 500px; height: 500px">

            </div>

            <div id="footer">
                # footer
            </div>
        </div>
    </body>
</html>