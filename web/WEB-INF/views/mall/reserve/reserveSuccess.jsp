<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="container reserveSuccessTamplate">
    <div class="row">
        <div class="col-sm-12">
            <h1 class="text-success">
                <spring:message code="mall.reserve_success"/>
            </h1>
        </div>
        <div class="col-sm-12">
            <h2>
                <spring:message code="mall.reservation_number"/>
                <span class="text-danger">RL9987456</span>
            </h2>
            <div class="swalLabelText-sm">
                (<spring:message code="mall.reservation_number_description"/>)
            </div>
        </div>
    </div>
</div>