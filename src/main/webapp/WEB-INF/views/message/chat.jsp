<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<!-- description -->
<meta charset="UTF-8" />
<meta name="keywords" content="Where is my room" />
<meta name="description" content="짧게 머무는 방 찾기 서비스" />
<meta name="initial" content="Han seunghoon" />
<meta name="author" content="Hyndai IT&E KTH, BEJ, HMS, HSH" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>짧게 머물자, 구해줘 룸즈!</title>

<!-- fonts -->
<link
   href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;700&display=swap"
   rel="stylesheet" />

<!-- styles -->
<link rel="stylesheet" href="${contextPath}/resources/css/reset.css" />
<link rel="stylesheet" href="${contextPath}/resources/css/grid.min.css" />
<link rel="stylesheet" href="${contextPath}/resources/css/header.css" />
<link rel="stylesheet" href="${contextPath}/resources/css/footer.css" />
<link rel="stylesheet" href="${contextPath}/resources/css/dropdown.css" />
<link rel="stylesheet" href="${contextPath}/resources/css/popup.css" />
<!-- 해당 페이지의 css 적용! style 지우고 해당 css 입력! -->
<link rel="stylesheet" href="${contextPath}/resources/css/chat.css" />

<!-- favicon -->
<link rel="shortcut icon" href="${contextPath}/resources/img/favicon.ico"
   type="image/x-icon" />
<link rel="icon" href="${contextPath}/resources/img/favicon.ico" type="image/x-icon" />

<!-- app -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
   window.userId = ${sessionScope.userInfo.id};
</script>
<script src="${contextPath}/resources/js/message.js" ></script>


</head>
<body>
   <div class="popup-container">
   </div>
   <header class="page-header">
      <div class="header-logo">
         <a href="./index.html"> <img src="${contextPath}/resources/img/icon.png"
            alt="Logo" />
         </a>
      </div>
      <div class="header-menu">
         <nav class="header-navigation">
            <a href="${contextPath}/map">지도</a> <a href="${contextPath}/boards/enroll">방
               내놓기</a> <a href="${contextPath}/qna">Q&amp;A</a>
         </nav>
         <div class="header-profile dropdown">
            <button type="button" class="dropdown-button">
               <img src="https://avatars.githubusercontent.com/u/50897259?v=4"
                  alt="Profile Image" draggable="false" />
            </button>
            <div class="dropdown-menu">
               <h3>
                  <!-- 세션 없을 시  : <a href="/project/users/login">Sign in</a> -->
                  반갑습니다 :) <strong>${sessionScope.userInfo.name}</strong> 님
               </h3>
               <ul>
                  <li><a href="#">내 정보</a></li>
                  <li><a href="#">내가 등록한 방</a></li>
                  <li><a href="#">최근 본 방</a></li>
                  <li><a href="#">쪽지</a></li>
               </ul>
               <ul>
                  <li><a href="${contextPath}/users/logout">로그아웃</a></li>
               </ul>
            </div>
         </div>
      </div>
   </header>
   
   <section class="chatting">
      <div class="container">
         <div class="chat">

            <div class="chat-list">
               <div style="display:flex; flex-direction:row; justify-content:space-between">
                  <h2>쪽지함</h2>
                  <img id="refresh-btn" src='<c:url value="/resources/img/refresh.png"/>' />
               </div>

               <div class="items scroll message-list" id="autoScroll">

               </div>
            </div>

            <div class="chat-message">
               <div style="display:flex; flex-direction: row; justify-content: space-between;">
                  <h2>내용</h2>
                  <div>
                     <button class="delete-btn" onclick="deleteMsg()">방 나가기</button>
                     <button class="list-btn" onclick="listOpen()">쪽지함</button>
                  </div>
               </div>
               <div class="items scroll message-log" id="autoScroll">

               </div>

               <div class="chat-form">
                     <input id="message_input" class="message_input" type="text" placeholder="메시지를 입력하세요">
                     <input id="submit_btn" class="submit_btn" type="button" value="전송">

               </div>

            </div>
         </div>
      </div>
   </section>


   <!-- app -->
   <script src="${contextPath}/resources/js/dropdown-menu.js"></script>
   
</body>
</html>