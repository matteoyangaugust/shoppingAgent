
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<t:base>
    <jsp:attribute name="javascript">
        <script src='<c:url value="/js/manage/category/edit.js"/>'></script>
    </jsp:attribute>
    <jsp:attribute name="style">
        <link rel="stylesheet" href='<c:url value="/css/manage/category/edit.css"/>'>
        <link rel="stylesheet" href='<c:url value="/css/mall/shopping/items.css"/>'>
    </jsp:attribute>
    <jsp:body>
        <div id="template" style="display: none">
            <c:import url="addCategoryTemplate.jsp"/>
            <c:import url="../brand/goodsTemplate.jsp"/>
        </div>
        <hr class="col-sm-12 style14 labelText">
        <div class="container">
            <div class="row categories">
                <c:import url="../../filter.jsp"></c:import>
                <div class="col-sm-12 text-center mb-5">
                    <button type="button" id="addCategory" class="btn btn-outline-secondary w-100">
                        <i class="fa fa-plus"></i>
                        <spring:message code='category.add_category'/>
                    </button>
                </div>
                <c:forEach var="category" items="${categories}">
                    <c:if test="${category.activation eq 1}">
                        <div class="col-sm-12 labelText mt-2 mb-2 category">
                            <div class="row p-2">
                                <form class="col-sm-4 text-center categoryFrom">
                                    <input type="hidden" name="sn" value="${category.sn}"/>
                                    <input type="text" name="name" class="name form-control" value='${category.name}' placeholder="category.name">
                                </form>
                                <div class="col-sm-8">
                                    <div class="col-sm-12 form-inline justify-content-center action">
                                        <button type="button" class="modify btn btn-outline-secondary w-25">
                                            <spring:message code="modify"/>
                                        </button>
                                        <button type="button" class="btn btn-outline-secondary w-50 showGoods">
                                            <spring:message code="category.item_included"/>
                                        </button>
                                        <button type="button" class="delete btn btn-outline-secondary w-25">
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