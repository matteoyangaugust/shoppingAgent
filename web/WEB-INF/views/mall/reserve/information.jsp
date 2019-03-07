
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<t:base>
    <jsp:attribute name="javascript">
        <script src='<c:url value="/js/mall/reserve/info.js"/>'></script>
    </jsp:attribute>
    <jsp:attribute name="style">
        <link rel="stylesheet" href='<c:url value="/css/mall/reserve/info.css"/>'>
    </jsp:attribute>
    <jsp:body>
        <div id="template" style="display: none">
            <c:import url="reserveSuccess.jsp"/>
        </div>
        <hr class="col-sm-12 style14 labelText">
        <div class="container">
            <div class="row">
                <%--<c:import url="../../filter.jsp"></c:import>--%>
                <div class="col-sm-12 text-center">
                    <h1><spring:message code="mall.reserve.reservation"/></h1>
                </div>
                <hr class="col-sm-12 style14 labelText">
                <div class="reservation mt-3 form-group form-inline col-sm-12 text-center">
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
                </div>
                <div class="reservation mt-3 form-group form-inline col-sm-12 text-center">
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
                </div>
                <div class="col-sm-12 text-center">
                    <h1><spring:message code="mall.reserve.buyer_info"/></h1>
                </div>
                <hr class="col-sm-12 style14 labelText">
                <div class="col-sm-12 form-inline justify-content-center" style="margin-bottom: 10px;">
                    <div style="width:100px;">
                        <spring:message code="member.name"/>
                    </div>
                    <div style="width:200px;">
                        <input type="text" class="form-control w-100" value="" placeholder='<spring:message code="member.name"/>'>
                    </div>
                </div>
                <div class="col-sm-12 form-inline justify-content-center" style="margin-bottom: 10px;">
                    <div style="width:100px;">
                        <spring:message code="member.address"/>
                    </div>
                    <div style="width:200px;" class="form-inline form-group">
                        <input type="text" class="form-control" style="width:130px;" value="" placeholder='<spring:message code="member.postNum"/>'>
                        <input type="text" class="form-control" style="width:250px;" value="" placeholder='<spring:message code="member.address"/>'>
                    </div>
                </div>
                <div class="col-sm-12 form-inline justify-content-center" style="margin-bottom: 10px;">
                    <div style="width:100px;">
                        <spring:message code="member.phone"/>
                    </div>
                    <div style="width:200px;">
                        <input type="text" class="form-control w-100" value="" placeholder='<spring:message code="member.phone"/>'>
                    </div>
                </div>
                <div class="col-sm-12 text-center">
                    <button type="button" class="btn btn-outline-success" id="submit">
                        <spring:message code="submit"/>
                    </button>
                </div>
            </div>
        </div>
        <hr class="col-sm-12 style14 labelText">
    </jsp:body>
</t:base>