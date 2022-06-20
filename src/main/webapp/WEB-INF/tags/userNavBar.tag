<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ attribute name="current" %>

<c:url value="/user/list" var="userListUrl"></c:url>
<c:url value="/user/info" var="userInfoUrl"></c:url>
<c:url value="/user/signup" var="signUpUrl"></c:url>
<c:url value="/user/login" var="loginUrl"></c:url>
<c:url value="/logout" var="logoutUrl"></c:url>

<%-- 회원정보링크 --%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
	<c:url value="/user/info" var="userInfoUrl">
		<c:param name="user_id" value="${principal.username }" />
	</c:url>
</sec:authorize>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
  
    <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <sec:authorize access="hasRole('ADMIN')">
        	<li class="nav-item">
    	    	<a class="nav-link ${current == 'userList' ? 'active' : '' }" href="${userListUrl }">회원 목록</a>
	        </li>
        </sec:authorize>
        
        <sec:authorize access="isAuthenticated()">
      		<li class="nav-item">
      			<a class="nav-link ${current == 'info' ? 'active' : '' }" href="${userInfoUrl }">마이페이지</a>
      		</li>
        </sec:authorize>
        
        <sec:authorize access="not isAuthenticated()">
	      	<li class="nav-item">
	        	<a class="nav-link ${current == 'signup' ? 'active' : '' }" href="${signUpUrl }">회원 가입</a>
	        </li>
	        
	        <li class="nav-item">
	        	<a class="nav-link ${current == 'login' ? 'active' : '' }" href="${loginUrl }">로그인</a>
	        </li>
        </sec:authorize>
        
        <sec:authorize access="isAuthenticated()">
        	<li class="nav-item">
        		<button class="btn btn-link nav-link" type="submit" form="logoutForm">로그아웃</button>
        	</li>
        </sec:authorize>
      </ul>
      <div class="d-none">
      	<form action="${logoutUrl }" id="logoutForm" method="post"></form>
      </div>
    </div>
  </div>
</nav>