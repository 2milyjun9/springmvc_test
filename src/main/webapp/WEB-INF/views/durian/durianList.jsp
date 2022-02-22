<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Auctionary 회원조회</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/dashboard/">

<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/0bd8c4f8de.js"
	crossorigin="anonymous"></script>

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&display=swap"
	rel="stylesheet">

<!-- 주소창사진 -->
<link rel="shortcut icon" type="image/x-icon"
	href="../../../images/xdmin/logoA2.png">

<!-- 기본템플릿 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link href="dashboard.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link
	href="../../../bootstrap/bootstrap-5.1.3-examples/assets/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
a { /*링크 줄안가게하기*/
	text-decoration: none;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

body {
	font-size: .9rem;
}

.feather {
	width: 16px;
	height: 16px;
	vertical-align: text-bottom;
}

/*
 * Sidebar
*/
.sidebar {
	position: fixed;
	top: 0;
	/* rtl:raw:
  right: 0;
  */
	bottom: 0;
	/* rtl:remove */
	left: 0;
	z-index: 100; /* Behind the navbar */
	padding: 48px 0 0; /* Height of navbar */
	box-shadow: inset -1px 0 0 rgba(0, 0, 0, .1);
	/*미림추가*/
	margin-left: 10px;
	font-size: .9rem;
	width: 120px;
}

@media ( max-width : 767.98px) {
	.sidebar {
		top: 5rem;
	}
}

.sidebar-sticky {
	position: relative;
	top: 0;
	height: calc(100vh - 48px);
	padding-top: .5rem;
	overflow-x: hidden;
	overflow-y: auto;
	/* Scrollable contents if viewport is shorter than content. */
}

.sidebar .nav-link {
	font-weight: 500;
	color: #333;
}

.sidebar .nav-link .feather {
	margin-right: 4px;
	color: #727272;
}

.sidebar .nav-link.active {
	color: #2470dc;
}

.sidebar .nav-link:hover .feather, .sidebar .nav-link.active .feather {
	color: inherit;
}

.sidebar-heading {
	font-size: .75rem;
	text-transform: uppercase;
}

/*
 * Navbar
 */
.navbar-brand {
	padding-top: .75rem;
	padding-bottom: .75rem;
	font-size: 1rem;
}

.navbar .navbar-toggler {
	top: .25rem;
	right: 1rem;
}
</style>
</head>
<body>



	<header
		class="navbar navbar-dark sticky-top bg-secondary text-white flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3"
			href="../main/main.html"> Auctionary</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</header>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-3">
					<ul class="list-unstyled ps-0">
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#상품관리">상품관리</button>
							<div class="collapse" id="상품관리">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="../product/productList.html"
										class="link-dark rounded"> &nbsp; &nbsp;등록상품조회</a></li>
								</ul>
							</div>
						</li>
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#회원관리">회원관리</button>
							<div class="collapse" id="회원관리">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="../../member/memberList.html"
										class="link-dark rounded"> &nbsp; &nbsp;회원조회</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;회원수정</a></li>
								</ul>
							</div>
						</li>
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#cs"
								aria-expanded="false">C/S</button>
							<div class="collapse" id="cs">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;고객센터</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;리뷰관리</a></li>
								</ul>
							</div>
						</li>
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#리포트">리포트</button>
							<div class="collapse" id="리포트">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;일간</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;주간</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;월간</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;연간</a></li>
								</ul>
							</div>
						</li>
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#관리자메뉴">관리자메뉴</button>
							<div class="collapse" id="관리자메뉴">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;시스템관리</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;메뉴관리</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;권한관리</a></li>
								</ul>
							</div>
						</li>
					</ul>
					<div class="dropdown border-top">
						<a href="#"
							class="d-flex align-items-center justify-content-center p-3 link-dark text-decoration-none dropdown-toggle"
							id="dropdownUser3" data-bs-toggle="dropdown"> <img
							src="https://github.com/mdo.png" alt="mdo" width="25" height="25"
							class="rounded-circle">
						</a>
						<ul class="dropdown-menu text-small shadow"
							aria-labelledby="dropdownUser3">
							<li><a class="dropdown-item" href="#">결재</a></li>
							<li><a class="dropdown-item" onclick="showPopup();">프로필수정</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">로그아웃</a></li>
						</ul>

					</div>
				</div>
			</nav>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">회원조회</h1>
					<div class="btn-toolbar mb-2 mb-md-0">
						<div class="btn-group me-2">
							<label for="numbers"></label> <select id="회원조회">
								<option value="이름">이름</option>
								<option value="아이디">아이디</option>
								<option value="닉네임">닉네임</option>
								<option value="생년월일">생년월일</option>
								<option value="휴대폰번호">휴대폰번호</option>
							</select>
						</div>
						<input type="search" placeholder="회원조회" aria-label="Search">
						<button class="btn btn-outline-primary" type="submit">Search</button>
					</div>

					<!-- 웹버전기본정보테이블//모바일감춤 -->
					<div class="d-none d-xl-block ">
						<div class="btn-group me-2">
							<button type="button" class="btn btn-sm btn-outline-success">엑셀</button>
						</div>
					</div>
				</div>
		</div>
	</div>
	</main>


	<!-- 웹버전기본정보테이블//모바일감춤 -->
	<div class="d-none d-xl-block ">
		<div style="width: 75%; float: none; margin: 0 auto">
			<div class="table-responsive">
				<table class="table table-striped table-hover" data-toggle="table"
					data-toolbar=".toolbar" data-sortable="false" data-height="460">
					<thead>
						<tr>
							<div class="m_check_wrap">
								<th><input type="checkbox" id="allCheck"
									onclick="allCheck(event)"> <label for="allCheck">
										No. </label></th>
							</div>

							<th onclick=sortContent(0) scope="col">이름 <i
								class="fas fa-sort"> </i></th>
							<th onclick=sortContent(0) scope="col">아이디 <i
								class="fas fa-sort"> </i></th>
							<th onclick=sortContent(0) scope="col">생년월일 <i
								class="fas fa-sort"> </i>
							</th>
							<th onclick=sortContent(0) scope="col">연락처 <i
								class="fas fa-sort"> </i></th>
							<th onclick=sortContent(0) scope="col">비고<i
								class="fas fa-sort"> </i></th>
						</tr>
					</thead>
					<tbody id="mainTable_tbody">
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;1</label>
								</div>
							</td>
							<td><a href="./memberView.html">정미림 </a></td>
							<td>mija345</td>
							<td>19910907</td>
							<td>010-9245-6252</td>
							<td></td>
						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;2</label>
								</div>
							</td>
							<td>박기동</td>
							<td>park6252</td>
							<td>19791212</td>
							<td>010-9016-6252</td>
							<td></td>
						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;3</label>
								</div>
							</td>
							<td>박선우</td>
							<td>jr.park</td>
							<td>2020120</td>
							<td>010-1111-2222</td>
							<td></td>
						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;4</label>
								</div>
							</td>
							<td>박또또</td>
							<td>jr.park2</td>
							<td>20220724</td>
							<td>010-2222-3333</td>
							<td></td>
						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;5</label>
								</div>
							</td>
							<td>정라울</td>
							<td>puppy.raul</td>
							<td>20160416</td>
							<td>010-3333-4444</td>
							<td></td>
						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;6</label>
								</div>
							</td>
							<td>이혜란</td>
							<td>hyeranLee</td>
							<td>19910710</td>
							<td>010-4444-5555</td>
							<td></td>
						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;7</label>
								</div>
							</td>
							<td>고가희</td>
							<td>elli.go</td>
							<td>19910930</td>
							<td>010-4444-5555</td>
							<td></td>
						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;8</label>
								</div>
							</td>
							<td>김영지</td>
							<td>mumuzzang</td>
							<td>19900430</td>
							<td>010-5555-6666</td>
							<td></td>
						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;9</label>
								</div>
							</td>
							<td>김세진</td>
							<td>sjkim</td>
							<td>19901230</td>
							<td>010-5555-6666</td>
							<td></td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>



	<!-- 모바일버전테이블//웹감춤 -->
	<div class=" d-lg-block d-xl-none">
		<div style="width: 90%; float: none; margin: 0 auto">
			<div class="table-responsive">
				<table class="table table-striped table-hover" data-toggle="table"
					data-toolbar=".toolbar" data-sortable="false" data-height="460">
					<thead>
						<tr>
							<div class="m_check_wrap">
								<th><input type="checkbox" id="allCheck"
									onclick="allCheck(event)"> <label for="allCheck">
										No. </label></th>
							</div>

							<th onclick=sortContent(0) scope="col">이름 <i
								class="fas fa-sort"> </i></th>
							<th onclick=sortContent(0) scope="col">아이디 <i
								class="fas fa-sort"> </i></th>
							<th onclick=sortContent(0) scope="col">생년월일 <i
								class="fas fa-sort"> </i>
							</th>
							<th onclick=sortContent(0) scope="col">연락처 <i
								class="fas fa-sort"> </i></th>

						</tr>
					</thead>
					<tbody id="mainTable_tbody">
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;1</label>
								</div>
							</td>
							<td><a href="./memberView.html">정미림 </a></td>
							<td>mija345</td>
							<td>19910907</td>
							<td>010-9245-6252</td>

						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;2</label>
								</div>
							</td>
							<td>박기동</td>
							<td>park6252</td>
							<td>19791212</td>
							<td>010-9016-6252</td>

						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;3</label>
								</div>
							</td>
							<td>박선우</td>
							<td>jr.park</td>
							<td>2020120</td>
							<td>010-1111-2222</td>

						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;4</label>
								</div>
							</td>
							<td>박또또</td>
							<td>jr.park2</td>
							<td>20220724</td>
							<td>010-2222-3333</td>

						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;5</label>
								</div>
							</td>
							<td>정라울</td>
							<td>puppy.raul</td>
							<td>20160416</td>
							<td>010-3333-4444</td>

						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;6</label>
								</div>
							</td>
							<td>이혜란</td>
							<td>hyeranLee</td>
							<td>19910710</td>
							<td>010-4444-5555</td>

						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;7</label>
								</div>
							</td>
							<td>고가희</td>
							<td>elli.go</td>
							<td>19910930</td>
							<td>010-4444-5555</td>

						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;8</label>
								</div>
							</td>
							<td>김영지</td>
							<td>mumuzzang</td>
							<td>19900430</td>
							<td>010-5555-6666</td>

						</tr>
						<tr>
							<td scope="row">
								<div class="m_check_wrap">
									<input type="checkbox" class="check_all_list" id="agree1"
										onclick="checkAllList(event)"> <label for="agree1">&nbsp;9</label>
								</div>
							</td>
							<td>김세진</td>
							<td>sjkim</td>
							<td>19901230</td>
							<td>010-5555-6666</td>

						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>



	<div class="row text-center" style="width: 100%">
		<div style="width: 100%; float: none; margin: 0 auto">

			<!-- Button trigger modal -->

				<button type="button" class="btn btn-sm btn-outline-success"
					onclick="addRow()">회원추가</button>
	
			<button type="button" class="btn btn-sm btn-outline-primary"
				data-bs-toggle="modal" data-bs-target="#저장">저장</button>

			<!-- Modal -->
			<div class="modal fade" id="저장" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">
								<i class="fas fa-exclamation-circle"></i>저장 확인!
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">정말 저장하시겠습니까?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<a href="memberList.html">
								<button type="button" class="btn btn-primary">저장</button>
							</a>
						</div>
					</div>
				</div>
			</div>


			<button type="button" class="btn btn-sm btn-outline-danger"
				data-bs-toggle="modal" data-bs-target="#삭제">삭제</button>

			<!-- Modal -->
			<div class="modal fade" id="삭제" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">
								<i class="fas fa-exclamation-circle"></i>삭제 확인!
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">정말 삭제하시겠습니까?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<a href="memberList.html">
								<button type="button" class="btn btn-primary">확인</button>
							</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<br>
	<br>
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled"><a class="page-link">Previous</a>
			</li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>

			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</nav>

	<script type="text/javascript">
		/* globals Chart:false, feather:false */

		(function() {
			'use strict'

			feather.replace({
				'aria-hidden' : 'true'
			})

	</script>

	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<script src="dashboard.js"></script>


	<!-- 기본템플릿 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	</script>

	<!-- 정렬 -->
	<script>
		$(function() {
			$('#sortable').change(function() {
				$('#table').bootstrapTable('refreshOptions', {
					sortable : $('#sortable').prop('checked')
				})
			})
		})

		var sortType = 'asc'; // 정렬타입을 토글

		window.onload = function() {

			// 임의의 데이터 넣기

			var id = document.getElementById("mainTable_tbody");
			createTableBody(id, data); // 테이블 바디 만드는 함수 
		}

		// 테이블 바디 만드는 함수
		function createTableBody(target, data) {
			for (var i = 0; i < data.length; i++) {
				var tr = document.createElement('tr');
				target.appendChild(tr);
				for (var j = 0; j < data[i].length; j++) {
					var td = document.createElement('td');
					tr.appendChild(td);
					td.innerHTML = data[i][j];
				}
			}
		}

		// 테이블 헤더 클릭시 정렬 
		function sortContent(index) {
			var table = document.getElementsByTagName('table');

			sortType = (sortType == 'asc') ? 'desc' : 'asc';

			var checkSort = true;
			var rows = table[0].rows;

			while (checkSort) { // 현재와 다음만 비교하기때문에 위치변경되면 다시 정렬해준다.
				checkSort = false;

				for (var i = 1; i < (rows.length - 1); i++) {
					var fCell = rows[i].cells[index].innerHTML.toUpperCase();
					var sCell = rows[i + 1].cells[index].innerHTML
							.toUpperCase();

					var row = rows[i];

					// 오름차순<->내림차순 ( 이부분이 이해 잘안됬는데 오름차순이면 >, 내림차순이면 <
					//                        이고 if문의 내용은 동일하다 )
					if ((sortType == 'asc' && fCell > sCell)
							|| (sortType == 'desc' && fCell < sCell)) {

						row.parentNode.insertBefore(row.nextSibling, row);
						checkSort = true;
					}
				}
			}
		}
	</script>

	<script type="text/javascript">   //전체선택
		function allCheck(e) {
			if (e.target.checked) {
				document.querySelectorAll(".check_all_list").forEach(
						function(v, i) {
							v.checked = true;
						});
			} else {
				document.querySelectorAll(".check_all_list").forEach(
						function(v, i) {
							v.checked = false;
						});
			}
		}
		function checkAllList(e) {
			let checkCount = 0;
			document.querySelectorAll(".check_all_list").forEach(
					function(v, i) {
						if (v.checked === false) {
							checkCount++;
						}
					});
			if (checkCount > 0) {
				document.getElementById("allCheck").checked = false;
			} else if (checkCount === 0) {
				document.getElementById("allCheck").checked = true;
			}
	</script>

	<!-- 팝업 -->
	<script language="javascript">
  function showPopup() { window.open("../main/mainProfileEdit.html", "프로필수정", "width=400, height=300, left=100, top=50"); }
  </script>

	<script type="text/javascript"> /* 행추가? */
	function addRow() {
  // table element 찾기
  const table = document.getElementById('mainTable_tbody');
  
  // 새 행(Row) 추가
  const newRow = table.insertRow();
  
  // 새 행(Row)에 Cell 추가
  const newCell1 = newRow.insertCell(0);
  const newCell2 = newRow.insertCell(1);
  
  // Cell에 텍스트 추가
  newCell1.innerText = '10';
  newCell2.innerText = '';
  newCell3.innerText = '';
  newCell4.innerText = '';
  newCell5.innerText = '';
}
</script>
</body>
</html>