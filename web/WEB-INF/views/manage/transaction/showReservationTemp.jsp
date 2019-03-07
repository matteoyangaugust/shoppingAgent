<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="row text-center reservationTemplate">
    <div class="col-sm-12 text-center">
        <h1><spring:message code="mall.reserve.reservation"/></h1>
    </div>
    <hr class="col-sm-12 style14 labelText">
    <div class="swalLabelText reservationInfo mt-3 mb-1 form-group form-inline col-sm-12 text-center hover_shadow_border">
        <div class="itemPic">
            <img src='<c:url value="/images/test.jpg"/>' class="coverPhoto">
        </div>
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
    <div class="swalLabelText reservationInfo mt-3 mb-1 form-group form-inline col-sm-12 text-center hover_shadow_border">
        <div class="itemPic">
            <img src='<c:url value="/images/test2.jpg"/>' class="coverPhoto">
        </div>
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
        </div>
    </div>
</div>