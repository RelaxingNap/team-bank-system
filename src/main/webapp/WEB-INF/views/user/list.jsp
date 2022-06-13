<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.min.js"
	integrity="sha512-OvBgP9A2JBgiRad/mM36mkzXSXaJE9BEIENnVEmeZdITvwT09xnxLtT4twkCa8m/loMbPHsvPl0T8lRGVBwjlQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-10">
			
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<div class="container-fluid">
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item">
									<a class="nav-link active" aria-current="page" href="#">전체</a>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#"
										id="navbarDropdown" role="button" data-bs-toggle="dropdown"
										aria-expanded="false"> 관리자 </a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
										<li>
											<a class="dropdown-item" href="#">총괄</a>
										</li>
										<li>
											<a class="dropdown-item" href="#">상품</a>
										</li>
										<li>
											<a class="dropdown-item" href="#">문의</a>
										</li>
									</ul>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">일반 회원</a>
								</li>
								
								<sec:authorize access="isAuthenticated()">
									<sec:authentication property="principal" var="principal"/>
									<c:url value="/user/info" var="userInfoUrl">
										<c:param name="userId" value="${principal.username }" />
									</c:url>
								</sec:authorize>
								<sec:authorize access="isAuthenticated()">
						        	<li class="nav-item">
						        		<a href="${userInfoUrl }" class="nav-link">회원정보</a>
						        	</li>
						        </sec:authorize>
							</ul>
							<form class="d-flex">
								<input class="form-control me-2" type="search"
									placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-primary" type="submit">Search</button>
							</form>
						</div>
					</div>
				</nav>

				<div class="d-flex align-items-center p-3 my-3 text-white bg-primary rounded shadow-sm">
					<div class="lh-1">
						<h1 class="h6 text-white lh-1">관리자</h1>
						<small>총괄</small>
					</div>
				</div>

				<div class="my-3 p-3 bg-body rounded shadow-sm">
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32">
							<rect width="100%" height="100%" fill="#e83e8c"></rect>
						</svg>

						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong>
							Some representative placeholder content, with some information
							about this user. Imagine this being some sort of status update,
							perhaps?
						</p>
					</div>

					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32">
							<rect width="100%" height="100%" fill="#e83e8c"></rect>
						</svg>

						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong>
							Some more representative placeholder content, related to this
							other user. Another status update, perhaps.
						</p>
					</div>

					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32">
							<rect width="100%" height="100%" fill="#e83e8c"></rect>
						</svg>

						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong>
							This user also gets some representative placeholder content.
							Maybe they did something interesting, and you really want to
							highlight this in the recent updates.
						</p>
					</div>
				</div>

				<div class="d-flex align-items-center p-3 my-3 text-white bg-primary rounded shadow-sm">
					<div class="lh-1">
						<h1 class="h6 text-white lh-1">관리자</h1>
						<small>상품</small>
					</div>
				</div>

				<div class="my-3 p-3 bg-body rounded shadow-sm">
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32">
							<rect width="100%" height="100%" fill="#007bff"></rect>
						</svg>

						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong>
							Some representative placeholder content, with some information
							about this user. Imagine this being some sort of status update,
							perhaps?
						</p>
					</div>
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32">
							<rect width="100%" height="100%" fill="#007bff"></rect>
						</svg>

						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong>
							Some more representative placeholder content, related to this
							other user. Another status update, perhaps.
						</p>
					</div>
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32">
							<rect width="100%" height="100%" fill="#007bff"></rect>
						</svg>

						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong>
							This user also gets some representative placeholder content.
							Maybe they did something interesting, and you really want to
							highlight this in the recent updates.
						</p>
					</div>
				</div>

				<div class="d-flex align-items-center p-3 my-3 text-white bg-primary rounded shadow-sm">
					<div class="lh-1">
						<h1 class="h6 text-white lh-1">관리자</h1>
						<small>문의</small>
					</div>
				</div>

				<div class="my-3 p-3 bg-body rounded shadow-sm">
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32">
							<rect width="100%" height="100%" fill="#6f42c1"></rect>
						</svg>

						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong>
							Some representative placeholder content, with some information
							about this user. Imagine this being some sort of status update,
							perhaps?
						</p>
					</div>
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32">
							<rect width="100%" height="100%" fill="#6f42c1"></rect>
						</svg>

						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong>
							Some more representative placeholder content, related to this
							other user. Another status update, perhaps.
						</p>
					</div>
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32">
							<rect width="100%" height="100%" fill="#6f42c1"></rect>
						</svg>

						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong>
							This user also gets some representative placeholder content.
							Maybe they did something interesting, and you really want to
							highlight this in the recent updates.
						</p>
					</div>
				</div>

				<div class="d-flex align-items-center p-3 my-3 text-white bg-primary rounded shadow-sm">
					<div class="lh-1">
						<h1 class="h6 text-white lh-1">회원</h1>
						<small>일반</small>
					</div>
				</div>
				
				<div class="my-3 p-3 bg-body rounded shadow-sm">
					<div class="d-flex text-muted pt-3">
						<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32">
								<rect width="100%" height="100%" fill="#4eca6d"></rect>
						</svg>
					
						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<strong class="d-block text-gray-dark">@username</strong>
							This user also gets some representative placeholder content. Maybe
							they did something interesting, and you really want to highlight
							this in the recent updates.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>