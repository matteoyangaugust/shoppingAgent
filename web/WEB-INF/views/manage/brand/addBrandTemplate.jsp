<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<form id="addBrandForm" class="row swalLabelText">
    <div class="col-sm-12 text-center">
        <h1>
            <spring:message code="brand.add_brand"/>
        </h1>
    </div>
    <div class="col-sm-12 text-center">
        <input type="text" class="notEmpty brandName form-control" placeholder='<spring:message code="item.brand"/><spring:message code="name"/> '/>
    </div>
</form>