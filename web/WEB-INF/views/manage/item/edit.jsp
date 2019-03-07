<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<t:base>
    <jsp:attribute name="javascript">
        <script src='<c:url value="/js/manage/item/edit.js"/>'></script>
        <script>
            var items = ${items};
        </script>
    </jsp:attribute>
    <jsp:attribute name="style">
        <link rel="stylesheet" href='<c:url value="/css/manage/item/edit.css"/>'>
        <style>
            img{
                max-width:180px;
            }
            input[type=file]{
                padding:10px;
                background:#2d2d2d;}
        </style>
    </jsp:attribute>
    <jsp:body>
        <div id="template" style="display: none">
            <c:import url="ItemDetailTemplate.jsp"></c:import>
            <c:import url="../../upload.jsp"></c:import>
        </div>
        <hr class="col-sm-12 style14 labelText">
        <div class="container">
            <div class="row itemsRow">
                <c:import url="../../filter.jsp"></c:import>
                <div class="mb-3 col-sm-12 text-center">
                    <button type="button" class="btn btn-outline-secondary" id="addBtn">
                        <i class="fa fa-plus fa-1x"></i>
                        <spring:message code="add_item"/>
                    </button>
                </div>
                <c:forEach var="item" items="${items}">
                    <div class="mb-5 items hover_shadow_invisible_border">
                        <div class="attributes">
                            <input type="hidden" class="sn" value="${item.sn}">
                            <input type="hidden" class="brand_sn" value="${item.brand_sn}">
                            <input type="hidden" class="category_sn" value="${item.category_sn}">
                            <input type="hidden" class="gender" value="${item.gender}">
                            <input type="hidden" class="name" value="${item.name}">
                            <input type="hidden" class="default_selling_price" value="${item.default_selling_price}">
                        </div>
                        <div class="itemPic">
                            <c:forEach var="photo" items="${item.photos}" varStatus="count">
                                <c:if test="${count.index eq 0}">
                                    <img src='data:image/png;base64,${photo.base_64_photo}' class="coverPhoto">
                                </c:if>
                            </c:forEach>
                        </div>
                        <div class="itemInfoGroup text-center">
                            <div class="labelText itemInfoName">
                                ${item.name}
                            </div>
                            <div class="labelText itemInfoPrice">
                                $${item.default_selling_price}
                            </div>
                            <div class="swalLabelText-light-gray itemInfoBrand">
                                ${item.brand.name}
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <hr class="col-sm-12 style14 labelText">
    </jsp:body>
</t:base>