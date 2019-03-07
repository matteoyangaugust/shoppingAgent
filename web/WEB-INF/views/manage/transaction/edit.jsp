
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<t:base>
    <jsp:attribute name="javascript">
        <script src='<c:url value="/js/manage/transaction/edit.js"/>'></script>
        <script>
            const transaction_name_message = '<spring:message code="transaction"/><spring:message code="name"/>';
            const create_transaction_message = '<spring:message code="transaction.create_transaction"/>';
            const transaction_close_confirm_message = '<spring:message code="transaction.close_confirm"/>';
        </script>
    </jsp:attribute>
    <jsp:attribute name="style">
        <link rel="stylesheet" href='<c:url value="/css/manage/transaction/edit.css"/>'>
    </jsp:attribute>
    <jsp:body>
        <div id="template" style="display: none">
            <c:import url="showReservationTemp.jsp"/>
            <c:import url="showReservationsTemp.jsp"/>
        </div>
        <div class="container">
            <div class="row">
                <hr class="col-sm-12 style14 labelText">
                <div class="text-center mb-3 form-inline" style="margin:0 auto;">
                    <select class="custom-select" id="transaction" name="transaction">
                        <option value="none"><spring:message code="please_select"/>&nbsp;<spring:message code="transaction"/></option>
                        <option style="display: none" id="tempOption"></option>
                        <option>03/25 交易表</option>
                        <option>03/31 交易表</option>
                        <option>04/05 交易表</option>
                    </select>
                </div>
                <div class="text-center mb-3 actionLine" style="margin:0 auto;">
                    <button type="button" class="btn btn-outline-secondary auto_margin_hr" id="createTransaction">
                        <i class="fa fa-file"></i>
                        <spring:message code="transaction.create_transaction"/>
                    </button>
                    <button type="button" id="importReservation" class="btn btn-outline-secondary auto_margin_hr" disabled>
                        <i class="fa fa-plus"></i>
                        <spring:message code="transaction.import_reservation"/>
                    </button>
                    <button type="button" id="closeTransaction" class="btn btn-outline-secondary auto_margin_hr" disabled>
                        <i class="fa fa-archive"></i>
                        <spring:message code="transaction.close"/>
                    </button>
                </div>
                <c:import url="../../filter.jsp"></c:import>
                <div class="col-sm-12 text-center labelText reservations" style="display: none">
                    <div class="form-inline auto_margin_hr hover_shadow_border p-2 mb-3 reservation">
                        <div class="text-center">
                            <div class="swalLabelText-light-gray">
                                <spring:message code="mall.reservation_number"/>
                            </div>
                            <div>
                                RL24545456
                            </div>
                        </div>
                        <div>
                            <div class="form-inline">
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray">
                                        <spring:message code="item.name"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        測試產品名稱
                                    </div>
                                </div>
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray" >
                                        <spring:message code="item.selling_price"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        $500
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="swalLabelText-light-gray" >
                                <spring:message code="total"/>
                            </div>
                            <div>
                                $500
                            </div>
                        </div>
                        <div class="text-center">
                            <div class="btn-group-vertical btn-group-toggle text-center w-100" data-toggle="buttons">
                                <label class="btn btn-outline-info active w-100">
                                    <input type="radio" name="options" id="option1" autocomplete="off" checked>
                                    <i class="fa fa-truck"></i>
                                    <spring:message code="transaction.delivered"/>
                                </label>
                                <label class="btn btn-outline-info w-100">
                                    <input type="radio" name="options" id="option2" autocomplete="off">
                                    <i class="fa fa-check"></i>
                                    <spring:message code="transaction.paid"/>
                                </label>
                            </div>
                            <button type="button" class="showReservation btn btn-outline-secondary w-100 mt-1">
                                <i class="fa fa-eye"></i>
                                <spring:message code="transaction.show_reservation"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-100 mt-1">
                                <i class="fa fa-times"></i>
                                <spring:message code="transaction.cancel"/>
                            </button>
                        </div>
                    </div>
                    <div class="form-inline auto_margin_hr hover_shadow_border p-2 mb-3 reservation">
                        <div class="text-center">
                            <div class="swalLabelText-light-gray">
                                <spring:message code="mall.reservation_number"/>
                            </div>
                            <div>
                                RL24545456
                            </div>
                        </div>
                        <div>
                            <div class="form-inline">
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray">
                                        <spring:message code="item.name"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        測試產品名稱
                                    </div>
                                </div>
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray" >
                                        <spring:message code="item.selling_price"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        $500
                                    </div>
                                </div>
                            </div>
                            <div class="form-inline">
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray">
                                        <spring:message code="item.name"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        測試產品名稱
                                    </div>
                                </div>
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray" >
                                        <spring:message code="item.selling_price"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        $500
                                    </div>
                                </div>
                            </div>
                            <div class="form-inline">
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray">
                                        <spring:message code="item.name"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        測試產品名稱
                                    </div>
                                </div>
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray" >
                                        <spring:message code="item.selling_price"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        $500
                                    </div>
                                </div>
                            </div>
                            <div class="form-inline">
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray">
                                        <spring:message code="item.name"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        測試產品名稱
                                    </div>
                                </div>
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray" >
                                        <spring:message code="item.selling_price"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        $500
                                    </div>
                                </div>
                            </div>
                            <div class="form-inline">
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray">
                                        <spring:message code="item.name"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        測試產品名稱
                                    </div>
                                </div>
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray" >
                                        <spring:message code="item.selling_price"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        $500
                                    </div>
                                </div>
                            </div>
                            <div class="form-inline">
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray">
                                        <spring:message code="item.name"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        測試產品名稱
                                    </div>
                                </div>
                                <div class="auto_margin_hr" style="width:100px;">
                                    <div class="text-center auto_margin_hr swalLabelText-light-gray" >
                                        <spring:message code="item.selling_price"/>
                                    </div>
                                    <div class="text-center auto_margin_hr">
                                        $500
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="swalLabelText-light-gray" >
                                <spring:message code="total"/>
                            </div>
                            <div>
                                $3000
                            </div>
                        </div>
                        <div class="text-center">
                            <div class="btn-group-vertical btn-group-toggle text-center w-100" data-toggle="buttons">
                                <label class="btn btn-outline-info active w-100">
                                    <input type="radio" name="options" id="option1" autocomplete="off" checked>
                                    <i class="fa fa-truck"></i>
                                    <spring:message code="transaction.delivered"/>
                                </label>
                                <label class="btn btn-outline-info w-100">
                                    <input type="radio" name="options" id="option2" autocomplete="off">
                                    <i class="fa fa-check"></i>
                                    <spring:message code="transaction.paid"/>
                                </label>
                            </div>
                            <button type="button" class="showReservation btn btn-outline-secondary w-100 mt-1">
                                <i class="fa fa-eye"></i>
                                <spring:message code="transaction.show_reservation"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-100 mt-1">
                                <i class="fa fa-times"></i>
                                <spring:message code="transaction.cancel"/>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="col-sm-12 style14 labelText">
    </jsp:body>
</t:base>