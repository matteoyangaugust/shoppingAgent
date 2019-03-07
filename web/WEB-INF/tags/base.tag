<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="template" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@attribute name="javascript" fragment="true"%>
<%@attribute name="style" fragment="true"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<%--<meta name="apple-mobile-web-app-capable" content="yes">--%>
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<META http-equiv="Pragma" content="no-cache">
		<META http-equiv="Cache-Control" content="no-cache">
		<META http-equiv="Expires" content="0">
		<title><spring:message code="login.title"/></title>
		<link rel="stylesheet" href='<c:url value="/css/bootstrap/bootstrap.min.css"/>'>
		<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.0/css/bootstrap-toggle.min.css" rel="stylesheet">
		<link rel="stylesheet" href='<c:url value="/css/font-awesome.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/sweetalert2.min.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/jquery-ui.min.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/jquery-ui.theme.min.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/form.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/hr.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/imageUploader.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/jquery.timepicker.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/Flexable Off Canvas Menu/menu.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/common.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/filter.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/login/login.css"/>'>
		<link rel="stylesheet" href='<c:url value="/css/initialize/loading.css"/>'>
		<script src='<c:url value="/js/jquery-3.2.0.min.js"/>'></script>
		<script src='<c:url value="/js/tether.min.js"/>'></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src='<c:url value="/js/bootstrap/bootstrap.min.js"/>'></script>
		<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.0/js/bootstrap-toggle.min.js"></script>
		<script src='<c:url value="/js/sweetalert2.min.js"/>'></script>
		<script src='<c:url value="/js/sockjs.min.js"/>'></script>
		<script src='<c:url value="/js/stomp.min.js"/>'></script>
		<script src='<c:url value="/js/common.js"/>'></script>
		<script src='<c:url value="/js/customSweetAlert.js"/>'></script>
		<script src='<c:url value="/js/base.js"/>'></script>
		<script src='<c:url value="/js/webSocket.js"/>'></script>
		<script src='<c:url value="/js/jquery-ui.min.js"/>'></script>
		<script src='<c:url value="/js/jquery.scrollTo.js"/>'></script>
		<script src='<c:url value="/js/imageUpload.js"/>'></script>
		<script src='<c:url value="/js/jquery.timepicker.js"/>'></script>
		<script src='<c:url value="/js/Flexable Off Canvas Menu/menu.js"/>'></script>
		<script src='<c:url value="/js/class/SweetAlertAttribute.js"/>'></script>
		<script src='<c:url value="/js/messageSource/messageResource.js"/>'></script>
		<script src='<c:url value="/js/filter.js"/>'></script>
		<script src='<c:url value="/js/shoppingAgent/main.js"/>'></script>
		<script src='<c:url value="/js/class/FloatNumber.js"/>'></script>
		<script src='<c:url value="/js/jquery.lazyload.js"/>'></script>
		<script>
			var register_success_message = '<spring:message code="member.register_success"/>';
			var ctxPath = '<c:url value="/"/>';
            var sweetAlertAttr = new SweetAlertAttribute();
            var $swal;
            var $swalConfirmBtn;
			<c:if test="${menuRecord != null}">
            	var menuRecord = ${menuRecord};
			</c:if>
		</script>
		<jsp:invoke fragment="style" />
		<jsp:invoke fragment="javascript" />
	</head>
	<body>
		<form:form id="redirectForm" action="">
			<input type="hidden" name="mainMenuSn" id="mainMenuSn" value="">
			<input type="hidden" name="subMenuSn" id="subMenuSn" value="">
		</form:form>
		<div class='wrapper'>
			<div class='sidebar'>
				<div class='title'>
					<spring:message code="login.title"/>
				</div>
				<ul class='canvas_nav'>
					<c:forEach var="mainMenu" items="${mainMenus}">
							<c:forEach var="subMenu" items="${mainMenu.value}">
								<c:if test="${subMenu.is_default eq 1}">
									<li class="linkBtn">
										<div class="canvas-menu-a">
											<spring:message code="${mainMenu.key.name}"></spring:message>
											<input type="hidden" class="mainMenuSn" value="${mainMenu.key.sn}">
											<input type="hidden" class="subMenuSn" value="${subMenu.sn}">
											<input type="hidden" class="url" value="${subMenu.url}">
										</div>
									</li>
								</c:if>
							</c:forEach>
					</c:forEach>
				</ul>
			</div>
			<div class='content'>
				<div id="action" class="col-sm-12" style="position: relative; top: 0px; right: 0px; z-index: 999;">
					<div class="btn-group btn-group-sm" style="float: right">
						<button type="button" class="btn btn-outline-secondary languageBtn" value="tw">繁體中文</button>
						<button type="button" class="btn btn-outline-secondary languageBtn" value="en">English</button>
					</div>
					<sec:authorize access="!hasAnyRole('ROLE_ADMIN', 'ROLE_BUYER')">
						<div id="registerTemplate" style="display: none">
							<c:import url="../../registerTemplate.jsp"/>
							<c:import url="../../loginTemplate.jsp"/>
						</div>
						<div class="btn-group btn-group-sm mr-2" style="float: right">
							<button type="button" class="btn btn-outline-secondary" id="register">
								<spring:message code="register"/>
							</button>
						</div>
						<div class="btn-group btn-group-sm mr-2" style="float: right">
							<button type="button" class="btn btn-outline-secondary" id="login">
								<spring:message code="login"/>
							</button>
						</div>
					</sec:authorize>
				</div>
				<a class='button' id="menuTrigger"></a>
				<div class="row mt-4">

					<div class="col-sm-12 text-center mb-3">
						<c:if test="${menuRecord.init ne false}">
							<c:forEach var="mainMenu" items="${mainMenus}">
								<c:if test="${menuRecord.mainMenu.sn eq mainMenu.key.sn}">
									<c:forEach var="subMenu" items="${mainMenu.value}">
										<span>
											<c:if test="${subMenu.is_show eq 1}">
												<c:choose>
													<c:when test="${subMenu.sn eq menuRecord.subMenu.sn}">
														<button type="button" class="menuBtn btn btn-outline-secondary subLink selectedSubMenu" value="${subMenu.sn}">
															<spring:message code="${subMenu.name}"/>
														</button>
													</c:when>
													<c:otherwise>
														<button type="button" class="menuBtn btn btn-outline-secondary subLink unselectedSebMenu" value="${subMenu.sn}">
															<spring:message code="${subMenu.name}"/>
														</button>
													</c:otherwise>
												</c:choose>
												<input type="hidden" class="subUrl" value="${subMenu.url}">
											</c:if>
										</span>
									</c:forEach>
								</c:if>
							</c:forEach>
						</c:if>
					</div>
					<div id="dimScreen" style="display: none">
						<div class="container" style="top:30%">
							<div class="row">
								<div class="col-sm-12 text-center">
									<div class="spinner">
										<div class="dot1"></div>
										<div class="dot2"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<jsp:doBody />
				</div>
			</div>
		</div>
	</body>
</html>