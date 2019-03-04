<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<script type="text/javascript">
	//엔터 처리
	$(function() {
		$("input").not($(":button")).keypress(
				function(evt) {
					if (evt.keyCode == 13) {
						var fields = $(this).parents('form,body').find(
								'button,input,textarea,select');
						var index = fields.index(this);
						if (index > -1 && (index + 1) < fields.length) {
							fields.eq(index + 1).focus();
						}
						return false;
					}
				});
	});
</script>

<div id="wrap">
	<!-- Header -->
	<header>
		<div class="header">
			<div class="top">
				<h1 class="title">
					<a href="main.html">지존트럭</a>
				</h1>

				<!-- 회원 : 우측영역 -->
				<div class="login">
					<ul>
						<li><span>|</span></li>
						<li><a>로그인</a></li>
					</ul>
				</div>
				<div class="join">
					<ul>
						<li><a>회원가입</a></li>
					</ul>
				</div>
				
				<!-- //회원 -->
			</div>
			<!-- 
			<div class="bottom clear">
				<img src="<%=cp%>/resource/images/loveumijung.jpg" alt="이미지">
			</div>
			-->
		</div>
	</header>
	
	<div class="bottom clear">
				<img src="<%=cp%>/resource/images/ironman.jpg" alt="이미지" style="width:100%; height:300px;">
			</div>
	<div id="container" class="clear">
		<!-- contents -->
		<div class="contents">
			<div>
				<!-- 이미지 추가 -->
				<div>
					<!-- 검색 및 텍스트 영역 -->
					
					<div></div>
				</div>
			</div>
			<div class="box">
				<ul>
					<li>
						<div style="margin-right: 0; box-sizing: border-box;">
							<img src="" alt="이미지">
						</div>
					</li>
					<li>
						<div>
							<img src="" alt="이미지">
						</div>
					</li>
					<li>
						<div>
							<img src="" alt="이미지">
						</div>
					</li>
					<li>
						<div>
							<img src="" alt="이미지">
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- //contents -->
	</div>
</div>