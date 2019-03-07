<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-sm-12 mb-3 form-group form-inline ml-1" id="filter">
    <div class="form-inline tools" id="brand">
        <div class="filterContent">
            <select class="custom-select filterSelect" id="brandSelect">
                <option value="all"><spring:message code="all"/>&nbsp;<spring:message code="item.brand"/></option>
                <c:if test="${brands ne null}">
                    <c:forEach var="brand" items="${brands}">
                        <c:if test="${brand.activation eq 1}">
                            <option value="${brand.sn}">${brand.name}</option>
                        </c:if>
                    </c:forEach>
                </c:if>
            </select>
        </div>
    </div>
    <div class="form-inline tools" id="category">
        <div class="filterContent">
            <select class="custom-select filterSelect" name="category" id="categorySelect">
                <option value="all"><spring:message code="all"/>&nbsp;<spring:message code="category"/></option>
                <c:if test="${categories ne null}">
                    <c:forEach var="category" items="${categories}">
                        <c:if test="${category.activation eq 1}">
                            <option value="${category.sn}">${category.name}</option>
                        </c:if>
                    </c:forEach>
                </c:if>
            </select>
        </div>
    </div>
    <div class="form-inline tools" id="gender">
        <%--<div class="filterLabel">--%>
            <%--<spring:message code="item.gender"/>--%>
        <%--</div>--%>
        <div class="filterContent">
            <select class="custom-select filterSelect" name="gender" id="genderSelect">
                <option value="all"><spring:message code="all"/>&nbsp;<spring:message code="item.gender"/></option>
                <option value="0"><spring:message code="unisex"/></option>
                <option value="1"><spring:message code="male"/></option>
                <option value="2"><spring:message code="female"/></option>
            </select>
        </div>
    </div>
    <div class="form-inline tools" id="name_search">
        <input type="text" class="form-control notEmpty w-100" id="name_search_input" placeholder='<spring:message code="name_search"/>'>
    </div>
    <div class="form-inline tools" id="reservation_num_search">
        <input type="text" class="form-control notEmpty w-100" placeholder='<spring:message code="reservation_num_search"/>'>
    </div>
    <div class="form-inline tools" id="filter_reservation">
        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
            <i class="mr-2 fa fa-filter fa-2x"></i>
            <%--<label class="btn btn-outline-info active w-100">--%>
                <%--<input type="checkbox" name="options" id="option1" autocomplete="off" checked>--%>
                <%--<spring:message code="all"/>--%>
            <%--</label>--%>
            <label class="btn btn-outline-info w-100">
                <input type="checkbox" name="options" id="option2" autocomplete="off">
                <spring:message code="transaction.undelivered"/>
            </label>
            <label class="btn btn-outline-info w-100">
                <input type="checkbox" name="options" id="option2" autocomplete="off">
                <spring:message code="transaction.delivered"/>
            </label>
            <label class="btn btn-outline-info w-100">
                <input type="checkbox" name="options" id="option2" autocomplete="off">
                <spring:message code="transaction.unpaid"/>
            </label>
            <label class="btn btn-outline-info w-100">
                <input type="checkbox" name="options" id="option2" autocomplete="off">
                <spring:message code="transaction.paid"/>
            </label>
        </div>
    </div>
    <div class="form-inline tools" id="sorting">
        <%--<div class="filterLabel">--%>
            <%--<spring:message code="sorting"/>--%>
        <%--</div>--%>
        <div class="filterContent">
            <select class="custom-select sortingMethod" name="sorting">
                <option value="none"><spring:message code="please_select"/>&nbsp;<spring:message code="sorting"/></option>
                <option value="name" style="display: none"><spring:message code="name"/></option>
                <option value="default_selling_price" style="display: none"><spring:message code="price"/></option>
                <option value="update_time" style="display: none"><spring:message code="update_time"/></option>
                <option value="category_sn" style="display: none"><spring:message code="category"/></option>
                <option value="register_time" style="display: none"><spring:message code="register_time"/></option>
                <option value="reservation_num" style="display: none"><spring:message code="mall.reservation_number"/></option>
            </select>
        </div>
        <div class="btn-group btn-group-toggle text-center" id="sorting_direction" data-toggle="buttons">
            <label class="btn btn-outline-info active w-100">
                <input type="radio" class='options' name="options" value='asc' autocomplete="off" checked>
                <spring:message code="low"/>
                <i class="fa fa-arrow-right fa-1x"></i>
                <spring:message code="high"/>
            </label>
            <label class="btn btn-outline-info w-100">
                <input type="radio" class='options' name="options" value='desc' autocomplete="off">
                <spring:message code="high"/>
                <i class="fa fa-arrow-right fa-1x"></i>
                <spring:message code="low"/>
            </label>
        </div>
    </div>
</div>