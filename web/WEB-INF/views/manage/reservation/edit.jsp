
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<t:base>
    <jsp:attribute name="javascript">
        <script src='<c:url value="/js/manage/reservation/edit.js"/>'></script>
    </jsp:attribute>
    <jsp:attribute name="style">
        <link rel="stylesheet" href='<c:url value="/css/manage/reservation/edit.css"/>'>
    </jsp:attribute>
    <jsp:body>
        <div id="template" style="display: none">
        </div>
        <hr class="col-sm-12 style14 labelText">
        <div class="container">
            <div class="row">
                <c:import url="../../filter.jsp"></c:import>
                <div class="reservations mt-3 form-group form-inline col-sm-12 text-center">
                    <div class="col-sm-12">
                        <div class="swalLabelText-light-gray">
                            <spring:message code="mall.reservation_number"></spring:message>
                        </div>
                        <div class="dangerText">
                            RL12456163
                        </div>
                    </div>
                    <div class="reservation mt-3 mb-1 form-group form-inline col-sm-12 text-center">
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
                        <div class="col-sm-12 text-center mb-2 mt-2">
                            <div class="swalLabelText-light-gray">
                                <spring:message code="reservation.status"/>
                            </div>
                            <div class="btn-group-toggle btn-group" data-toggle="buttons">
                                <label class="btn btn-outline-info">
                                    <input type="radio" name="settingMethod" autocomplete="off">
                                    <spring:message code="reservation.asking"/>
                                </label>
                                <label class="btn btn-outline-info">
                                    <input type="radio" name="settingMethod" autocomplete="off">
                                    <spring:message code="reservation.importing"/>
                                </label>
                                <label class="btn btn-outline-info">
                                    <input type="radio" name="settingMethod" autocomplete="off">
                                    <spring:message code="reservation.no_items"/>
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-12 text-center mb-2 mt-2">
                            <button type="button" class="btn btn-outline-secondary addTransaction" style="width: 170px">
                                <spring:message code="reservation.add_to_transaction"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary" style="width: 170px">
                                <spring:message code="reservation.assign_item"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary delete" style="width: 170px">
                                <spring:message code="cancel"/>
                            </button>
                        </div>
                    </div>
                    <div class="col-sm-12 text-center">
                        <hr class="col-sm-12 style14 labelText">
                    </div>
                    <div class="reservation mt-3 mb-1 form-group form-inline col-sm-12 text-center">
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
                        <div class="col-sm-12 text-center mb-2 mt-2">
                            <div class="swalLabelText-light-gray">
                                <spring:message code="reservation.status"/>
                            </div>
                            <div class="labelText">
                                <spring:message code="item.checked"/>
                            </div>
                        </div>
                        <div class="col-sm-12 text-center mb-2 mt-2">
                            <button type="button" class="btn btn-outline-secondary addTransaction" style="width: 170px">
                                <spring:message code="reservation.add_to_transaction"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary" style="width: 170px" disabled>
                                <spring:message code="reservation.assign_item"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary delete" style="width: 170px">
                                <spring:message code="cancel"/>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="col-sm-12 style14 labelText">
    </jsp:body>
</t:base>