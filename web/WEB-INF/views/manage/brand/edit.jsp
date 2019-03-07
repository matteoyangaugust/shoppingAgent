
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<t:base>
    <jsp:attribute name="javascript">
        <script src='<c:url value="/js/manage/brand/edit.js"/>'></script>
    </jsp:attribute>
    <jsp:attribute name="style">
        <link rel="stylesheet" href='<c:url value="/css/manage/brand/edit.css"/>'>
        <link rel="stylesheet" href='<c:url value="/css/mall/shopping/items.css"/>'>
    </jsp:attribute>
    <jsp:body>
        <div id="template" style="display: none">
            <c:import url="goodsTemplate.jsp"/>
            <c:import url="addBrandTemplate.jsp"/>
        </div>
        <hr class="col-sm-12 style14 labelText">
        <div class="container">
            <div class="row brands">
                <c:import url="../../filter.jsp"></c:import>
                <div class="col-sm-12 text-center mb-5">
                    <button type="button" id="addBrand" class="btn btn-outline-secondary w-100">
                        <i class="fa fa-plus"></i>
                        <spring:message code="brand.add_brand"/>
                    </button>
                </div>
                <c:forEach var="brand" items="${brands}">
                    <c:if test="${brand.activation eq 1}">
                        <div class="col-sm-12 labelText mt-2 mb-2 brand">
                            <div class="row p-2">
                                <form class="col-sm-4 text-center nameArea brandForm">
                                    <input type="hidden" name="sn" value="${brand.sn}"/>
                                    <input type="text" name="name" class="notEmpty name form-control" value='${brand.name}' placeholder='<spring:message code="item.brand"/><spring:message code="name"/>'
                                           aria-describedby='<spring:message code="item.brand"/><spring:message code="name"/>'>
                                </form>
                                <div class="col-sm-8 p-0">
                                    <div class="col-sm-12 form-inline justify-content-center action">
                                        <button type="button" class="btn btn-outline-secondary modifyBtn">
                                            <spring:message code="modify"/>
                                        </button>
                                        <button type="button" class="btn btn-outline-secondary showGoods">
                                            <spring:message code="brand.goods"/>
                                        </button>
                                        <button type="button" class="btn btn-outline-secondary inactivateBtn">
                                            <spring:message code="delete"/>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </div>
        <hr class="col-sm-12 style14 labelText">
    </jsp:body>
</t:base>