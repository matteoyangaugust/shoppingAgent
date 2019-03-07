<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<form class="row swalLabelText addCategoryTmp">
    <div class="col-sm-12 text-center">
        <h1>
            <spring:message code="add_category"/>
        </h1>
    </div>
    <div class="col-sm-12 text-center">
        <input type="text" class="notEmpty categoryName form-control" placeholder='<spring:message code="category.name"/> '/>
    </div>
</form>