<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>チェーン店一覧マップ</h2>
    </c:param>
    <c:param name="content">
        <h2>チェーン店一覧マップ</h2>
    </c:param>
</c:import>
<!DOCTYPE html>
<html lang="ja">
<body>
    <!--
    <div id="map" style="width: 500px; height: 500px"></div>
     -->
    <script type="text/javascript">
/*         function initMap() {
            var opts = {
                zoom : 15,
                center : new google.maps.LatLng(35.700000, 139.700000)
            };
            var map = new google.maps.Map(document.getElementById("map"), opts);
        }
         */

         var map;
         function initMap() {
             map = new google.maps.Map(document.getElementById('map'), {
                 center: {lat: 35.700000, lng: 139.700000},
                 zoom: 15
             });

             // マーカーを置く
             var marker = new google.maps.Marker({
                 position: {lat: 35.700000, lng: 139.700000}, // マーカーが指す緯度経度
                 map: map,                           // 描画するマップ
                 title: 'Hello World!'                   // ツールチップ
             });
         };
         window.onload = function () {
             initMap();
         }

    </script>

     <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDSLXWojfVo1aQ3F9ua4o4AOJIxMkdbdmI&callback=initMap">
    </script>
</body>
</html>