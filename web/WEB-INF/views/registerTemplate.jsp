<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="registerDiv">
    <div class="col-sm-12 text-center">
        <h1 class="swalLabelText">
            <spring:message code="register"/>
        </h1>
    </div>
    <div class="auto_margin_hr mb-2" style="width: 300px;">
        <input type="text" class="form-control" style="width:100%"
               placeholder='<spring:message code="insert"/>&nbsp;<spring:message code="member.username"/>'/>
    </div>
    <div class="auto_margin_hr mb-2" style="width: 300px;">
        <input type="password" class="form-control" style="width:100%"
               placeholder='<spring:message code="insert"/>&nbsp;<spring:message code="member.password"/>'/>
    </div>
    <div class="auto_margin_hr mb-2" style="width: 300px;">
        <input type="password" class="form-control" style="width:100%"
               placeholder='<spring:message code="insert"/>&nbsp;<spring:message code="member.password_again"/>'/>
    </div>
    <div class="auto_margin_hr mb-2" style="width: 300px;">
        <input type="text" class="form-control" style="width:100%"
               placeholder='<spring:message code="insert"/>&nbsp;<spring:message code="member.name"/>'/>
    </div>
    <div class="auto_margin_hr mb-2" style="width: 300px;">
        <input type="text" class="form-control" style="width:100%"
               placeholder='<spring:message code="insert"/>&nbsp;<spring:message code="member.phone"/>'/>
    </div>
    <div class="auto_margin_hr mb-2" style="width: 300px;">
        <input type="text" class="form-control" style="width:100%"
               placeholder='<spring:message code="insert"/>&nbsp;<spring:message code="member.facebook_name"/>'/>
    </div>
    <div class="auto_margin_hr mb-2" style="width: 300px;">
        <input type="text" class="form-control" style="width:100%"
               placeholder='<spring:message code="insert"/>&nbsp;<spring:message code="member.email"/>'/>
    </div>
    <div class="auto_margin_hr mb-2" style="width: 300px;">
        <input type="text" class="form-control" style="width:100%"
               placeholder='<spring:message code="insert"/>&nbsp;<spring:message code="member.address"/>'/>
    </div>
</div>