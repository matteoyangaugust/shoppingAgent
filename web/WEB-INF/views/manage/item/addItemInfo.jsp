<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="mt-3 form-group form-inline col-sm-12" id="addItemInfo">
    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.name"></spring:message>
        </div>
        <div>
            <input type="text" name="name" class="form-control notEmpty" placeholder='<spring:message code="item.name"></spring:message>'>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.cost"></spring:message>
            (<spring:message code="USD"/>)
        </div>
        <div>
            <input type="text" name="default_cost" class="usd toCalculate floatInput form-control notEmpty" value="0" placeholder='<spring:message code="item.cost"></spring:message>'>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.international_import_freight"></spring:message>
            (<spring:message code="USD"/>)
        </div>
        <div>
            <input type="text" name="default_international_shipping_fee" value="0" class="usd toCalculate floatInput form-control notEmpty" placeholder='<spring:message code="item.international_import_freight"></spring:message>'>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.domestic_freight"></spring:message>
            (<spring:message code="NTD"/>)
        </div>
        <div>
            <input type="text" name="default_domestic_shipping_fee" value="0" class="toCalculate numInput form-control notEmpty" placeholder='<spring:message code="item.domestic_freight"></spring:message>'>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.profit"></spring:message>
            (<spring:message code="NTD"/>)
        </div>
        <div>
            <input type="text" name="default_profit" value="0" class="toCalculate numInput form-control notEmpty" placeholder='<spring:message code="item.profit"></spring:message>'>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.fixed_price"></spring:message>
            (<spring:message code="NTD"/>)
        </div>
        <div>
            <input type="text" name="default_fixed_price" value="0" class="default_fixed_price numInput form-control notEmpty" placeholder='<spring:message code="item.fixed_price"></spring:message>'>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.selling_price"></spring:message>
            (<spring:message code="NTD"/>)
        </div>
        <div>
            <input type="text" name="default_selling_price" value="0" class="numInput form-control notEmpty" placeholder='<spring:message code="item.selling_price"></spring:message>'>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.gender"></spring:message>
        </div>
        <div>
            <select class="custom-select" name="gender" id="gender">
                <option value="0"><spring:message code="unisex"/></option>
                <option value="1"><spring:message code="male"/></option>
                <option value="2"><spring:message code="female"/></option>
            </select>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.category"></spring:message>
        </div>
        <div>
            <select class="custom-select" name="category_sn" id="category">
                <c:forEach var="category" items="${categories}">
                    <c:if test="${category.activation eq 1}">
                        <option value="${category.sn}">${category.name}</option>
                    </c:if>
                </c:forEach>
            </select>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.brand"></spring:message>
        </div>
        <div>
            <select class="custom-select" name="brand_sn" id="brand">
                <c:forEach var="brand" items="${brands}">
                    <c:if test="${brand.activation eq 1}">
                        <option value="${brand.sn}">${brand.name}</option>
                    </c:if>
                </c:forEach>
            </select>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="is_sell"></spring:message>
        </div>
        <div>
            <div class="btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-outline-secondary active">
                    <input type="radio" name=does_sell" autocomplete="off" value="1" checked>
                    <spring:message code="item.to_sell"/>
                </label>
                <label class="btn btn-outline-secondary">
                    <input type="radio" name="does_sell" autocomplete="off" value="0">
                    <spring:message code="item.no_sell"/>
                </label>
            </div>
        </div>
    </div>

    <div style="width: 330px; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.complexity"></spring:message>
        </div>
        <div>
            <div class="btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-outline-secondary">
                    <input class='allow_color' name="allow_color" type="checkbox" id="useColor" autocomplete="off" value="1">
                    <spring:message code="item.use_color"/>
                </label>
                <label class="btn btn-outline-secondary">
                    <input class='allow_size' name="allow_size" type="checkbox" id="useSize" autocomplete="off" value="1">
                    <spring:message code="item.use_size"/>
                </label>
            </div>
        </div>
    </div>

    <div style="width: 100%; height: 150px;">
        <hr class="col-sm-12 style14 labelText">
        <div class="swalLabelText-sm">
            <spring:message code="item.description"></spring:message>
        </div>
        <div>
            <textarea class="form-control" cols="80" rows="4" maxlength="1000" name="description" placeholder='<spring:message code="item.description"></spring:message>'></textarea>
        </div>
    </div>
</div>
<div class="col-sm-12">
    <hr class="col-sm-12 style14 labelText">
    <button type="button" class="btn btn-outline-secondary" id="addPhotoBtn">
        <spring:message code="item.add_photo"/>
    </button>
</div>
<div class="mt-2 mb-4 form-group form-inline col-sm-12" id="photoGroup"></div>