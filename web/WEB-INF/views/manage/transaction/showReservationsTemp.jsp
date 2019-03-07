<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="row text-center reservationTemplatesOutside"></div>
<div class="row text-center reservationsTemplate">
    <div class="col-sm-12">
        <h1 class="swalLabelText"><spring:message code="reservation.add_to_transaction"/></h1>
    </div>
    <div class="unImportedReservations mt-3 form-group form-inline col-sm-12 text-center hover_shadow_border">
        <div class="col-sm-12">
            <h2 class="swalLabelText-light-gray">
                <spring:message code="mall.reservation_number"></spring:message>
            </h2>
            <h2 class="dangerText">
                RL12456163
            </h2>
        </div>
        <div class="reservation mt-3 mb-1 form-group form-inline col-sm-12 text-center">
            <div class="itemPic">
                <img src='<c:url value="/images/test.jpg"/>' class="coverPhoto">
            </div>
            <div>
                <div class="swalLabelText-light-gray">
                    <spring:message code="item.name"></spring:message>
                </div>
                <div class="swalLabelText">
                    測試貨品名稱
                </div>
            </div>
            <div>
                <div class="swalLabelText-light-gray">
                    <spring:message code="item.color"></spring:message>
                </div>
                <div class="swalLabelText">
                    Yellow
                </div>
            </div>
            <div>
                <div class="swalLabelText-light-gray">
                    <spring:message code="item.stock"></spring:message>
                </div>
                <div class="col-sm-12 form-inline justify-content-center swalLabelText">
                    <div style="width:30%;">M</div>
                    <div style="width:30%;">1</div>
                </div>
                <div class="col-sm-12 form-inline justify-content-center swalLabelText">
                    <div style="width:30%;">XS</div>
                    <div style="width:30%;">2</div>
                </div>
            </div>
            <div class="col-sm-12 text-center mb-2 mt-2">
                <div class="btn-group-toggle btn-group" data-toggle="buttons">
                    <label class="btn btn-outline-info">
                        <input type="checkbox" autocomplete="off">
                        <spring:message code="reservation.add_to_transaction"/>
                    </label>
                </div>
            </div>
        </div>
        <div class="col-sm-12 text-center">
            <hr class="col-sm-12 style14 swalLabelText">
        </div>
        <div class="reservation mt-3 mb-1 form-group form-inline col-sm-12 text-center">
            <div class="itemPic">
                <img src='<c:url value="/images/test2.jpg"/>' class="coverPhoto">
            </div>
            <div>
                <div class="swalLabelText-light-gray">
                    <spring:message code="item.name"></spring:message>
                </div>
                <div class="swalLabelText">
                    測試貨品名稱
                </div>
            </div>
            <div>
                <div class="swalLabelText-light-gray">
                    <spring:message code="item.color"></spring:message>
                </div>
                <div class="swalLabelText">
                    Yellow
                </div>
            </div>
            <div>
                <div class="swalLabelText-light-gray">
                    <spring:message code="item.stock"></spring:message>
                </div>
                <div class="col-sm-12 form-inline justify-content-center swalLabelText">
                    <div style="width:30%;">M</div>
                    <div style="width:30%;">1</div>
                </div>
                <div class="col-sm-12 form-inline justify-content-center swalLabelText">
                    <div style="width:30%;">XS</div>
                    <div style="width:30%;">2</div>
                </div>
            </div>
            <div class="col-sm-12 text-center mb-2 mt-2">
                <div class="btn-group-toggle btn-group" data-toggle="buttons">
                    <label class="btn btn-outline-info">
                        <input type="checkbox" autocomplete="off">
                        <spring:message code="reservation.add_to_transaction"/>
                    </label>
                </div>
            </div>
        </div>
    </div>
    <div class="unImportedReservations mt-3 form-group form-inline col-sm-12 text-center hover_shadow_border">
        <div class="col-sm-12">
            <h2 class="swalLabelText-light-gray">
                <spring:message code="mall.reservation_number"></spring:message>
            </h2>
            <h2 class="dangerText">
                RL12456163
            </h2>
        </div>
        <div class="col-sm-12 text-center">
            <hr class="col-sm-12 style14 swalLabelText">
        </div>
        <div class="reservation mt-3 mb-1 form-group form-inline col-sm-12 text-center">
            <div class="itemPic">
                <img src='<c:url value="/images/test2.jpg"/>' class="coverPhoto">
            </div>
            <div>
                <div class="swalLabelText-light-gray">
                    <spring:message code="item.name"></spring:message>
                </div>
                <div class="swalLabelText">
                    測試貨品名稱
                </div>
            </div>
            <div>
                <div class="swalLabelText-light-gray">
                    <spring:message code="item.color"></spring:message>
                </div>
                <div class="swalLabelText">
                    Yellow
                </div>
            </div>
            <div>
                <div class="swalLabelText-light-gray">
                    <spring:message code="item.stock"></spring:message>
                </div>
                <div class="col-sm-12 form-inline justify-content-center swalLabelText">
                    <div style="width:30%;">M</div>
                    <div style="width:30%;">1</div>
                </div>
                <div class="col-sm-12 form-inline justify-content-center swalLabelText">
                    <div style="width:30%;">XS</div>
                    <div style="width:30%;">2</div>
                </div>
            </div>
            <div class="col-sm-12 text-center mb-2 mt-2">
                <div class="btn-group-toggle btn-group" data-toggle="buttons">
                    <label class="btn btn-outline-info">
                        <input type="checkbox" autocomplete="off">
                        <spring:message code="reservation.add_to_transaction"/>
                    </label>
                </div>
            </div>
        </div>
    </div>
</div>