
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<t:base>
    <jsp:attribute name="javascript">
        <script src='<c:url value="/js/mall/cart/show.js"/>'></script>
    </jsp:attribute>
    <jsp:attribute name="style">
        <link rel="stylesheet" href='<c:url value="/css/mall/cart/show.css"/>'>
    </jsp:attribute>
    <jsp:body>
        <div id="template" style="display: none">
        </div>
        <hr class="col-sm-12 style14 labelText">
        <div class="container">
            <div class="row" method="post">
                <div class="col-sm-12 text-center">
                    <h1><spring:message code="mall.reserve.reservation"/></h1>
                </div>
                <hr class="col-sm-12 style14 labelText">
                <form class="reservation mt-3 form-group form-inline col-sm-12 text-center"
                      method="post" action='<c:url value="/mall/reserve/info.do"/>'>
                    <div>
                        <div class="swalLabelText-light-gray">
                            <spring:message code="item.name"></spring:message>
                        </div>
                        <div class="labelText">
                            測試貨品名稱
                        </div>
                    </div>
                    <div>
                        <div class="swalLabelText-light-gray">
                            <spring:message code="item.color"></spring:message>
                        </div>
                        <div class="labelText">
                            Yellow
                        </div>
                    </div>
                    <div>
                        <div class="swalLabelText-light-gray">
                            <spring:message code="item.stock"></spring:message>
                        </div>
                        <div class="col-sm-12 form-inline justify-content-center labelText">
                            <div style="width:30%;">M</div>
                            <div style="width:30%;">1</div>
                        </div>
                        <div class="col-sm-12 form-inline justify-content-center labelText">
                            <div style="width:30%;">XS</div>
                            <div style="width:30%;">2</div>
                        </div>
                    </div>
                    <div class="col-sm-12 text-center">
                        <button type="button" class="btn btn-outline-secondary submit">
                            <spring:message code="mall.reserve"/>
                        </button>
                        <button type="button" class="btn btn-outline-secondary delete">
                            <spring:message code="delete"/>
                        </button>
                    </div>
                </form>
                <form class="reservation mt-3 form-group form-inline col-sm-12 text-center"
                    method="post" action='<c:url value="/mall/reserve/info.do"/>'>
                    <div>
                        <div class="swalLabelText-light-gray">
                            <spring:message code="item.name"></spring:message>
                        </div>
                        <div class="labelText">
                            測試貨品名稱
                        </div>
                    </div>
                    <div>
                        <div class="swalLabelText-light-gray">
                            <spring:message code="item.color"></spring:message>
                        </div>
                        <div class="labelText">
                            Yellow
                        </div>
                    </div>
                    <div>
                        <div class="swalLabelText-light-gray">
                            <spring:message code="item.stock"></spring:message>
                        </div>
                        <div class="col-sm-12 form-inline justify-content-center labelText">
                            <div style="width:30%;">XL</div>
                            <div style="width:30%;">12</div>
                        </div>
                        <div class="col-sm-12 form-inline justify-content-center labelText">
                            <div style="width:30%;">L</div>
                            <div style="width:30%;">2</div>
                        </div>
                        <div class="col-sm-12 form-inline justify-content-center labelText">
                            <div style="width:30%;">M</div>
                            <div style="width:30%;">1</div>
                        </div>
                        <div class="col-sm-12 form-inline justify-content-center labelText">
                            <div style="width:30%;">XS</div>
                            <div style="width:30%;">2</div>
                        </div>
                    </div>
                    <div class="col-sm-12 text-center">
                        <button type="button"  class="btn btn-outline-secondary submit">
                            <spring:message code="mall.reserve"/>
                        </button>
                        <button type="button"  class="btn btn-outline-secondary delete">
                            <spring:message code="delete"/>
                        </button>
                    </div>
                </form>
                <div class="col-sm-12 text-center">
                    <button type="button" class="btn btn-outline-secondary submitAll">
                        <spring:message code="mall.reserve"/>
                        <spring:message code="all"/>
                    </button>
                </div>
            </div>
        </div>
        <hr class="col-sm-12 style14 labelText">
    </jsp:body>
</t:base>