<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<form class="row swalLabelText addMemberTmp text-center">
    <div class="col-sm-12">
        <h3 class="text-center add_item_label">
            <spring:message code="add_member"/>
        </h3>
    </div>
    <span class="mt-3 form-group form-inline col-sm-12" id="addMemberInfo">
        <div style="width: 330px; height: 150px;">
            <hr class="col-sm-12 style14 labelText">
            <div class="swalLabelText-sm">
                <spring:message code="member.username"></spring:message>
            </div>
            <div>
                <input type="text" class="form-control notEmpty" placeholder='<spring:message code="member.username"></spring:message>'>
            </div>
        </div>
        <div style="width: 330px; height: 150px;">
            <hr class="col-sm-12 style14 labelText">
            <div class="swalLabelText-sm">
                <spring:message code="member.password"></spring:message>
            </div>
            <div>
                <input type="text" class="form-control notEmpty" placeholder='<spring:message code="member.password"></spring:message>'>
            </div>
            <div>
                <input type="text" class="form-control notEmpty" placeholder='<spring:message code="member.password_again"></spring:message>'>
            </div>
        </div>
        <div style="width: 330px; height: 150px;">
            <hr class="col-sm-12 style14 labelText">
            <div class="swalLabelText-sm">
                <spring:message code="member.name"></spring:message>
            </div>
            <div>
                <input type="text" class="form-control notEmpty" placeholder='<spring:message code="member.name"></spring:message>'>
            </div>
        </div>
        <div style="width: 330px; height: 150px;">
            <hr class="col-sm-12 style14 labelText">
            <div class="swalLabelText-sm">
                <spring:message code="member.role"></spring:message>
            </div>
            <div>
                <select class="custom-select" name="role" id="role">
                    <option value="0"><spring:message code="member.role"/></option>
                    <option value="1"><spring:message code="role.admin"/></option>
                    <option value="2"><spring:message code="role.buyer"/></option>
                </select>
            </div>
        </div>
        <div style="width: 330px; height: 150px;">
            <hr class="col-sm-12 style14 labelText">
            <div class="swalLabelText-sm">
                <spring:message code="member.email"></spring:message>
            </div>
            <div>
                <input type="text" class="form-control notEmpty" placeholder='<spring:message code="member.email"></spring:message>'>
            </div>
        </div>
        <div style="width: 330px; height: 150px;">
            <hr class="col-sm-12 style14 labelText">
            <div class="swalLabelText-sm">
                <spring:message code="member.phone"></spring:message>
            </div>
            <div>
                <input type="text" class="form-control notEmpty" placeholder='<spring:message code="member.phone"></spring:message>'>
            </div>
        </div>
        <div style="width: 330px; height: 150px;">
            <hr class="col-sm-12 style14 labelText">
            <div class="swalLabelText-sm">
                <spring:message code="member.facebook_name"></spring:message>
            </div>
            <div>
                <input type="text" class="form-control notEmpty" placeholder='<spring:message code="member.facebook_name"></spring:message>'>
            </div>
        </div>
    </span>
</form>