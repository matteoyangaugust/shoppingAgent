<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<form class="row swalLabelText itemDetailTemp text-center">
    <div class="col-sm-12">
        <h3 class="text-center add_item_label">
            <spring:message code="add_item"/>
        </h3>
        <h3 class="text-center edit_item_label">
            <spring:message code="edit_item"/>
        </h3>
    </div>
    <div class="col-sm-12 btn-group-toggle" data-toggle="buttons">
        <label class="btn btn-outline-secondary active">
            <input type="radio" class="settingMethod" value="default" name="settingMethod" autocomplete="off" ckecked>
            <spring:message code="item.basic_setting"/>
        </label>
        <label class="btn btn-outline-secondary">
            <input type="radio" class="settingMethod" value="stock" name="settingMethod" autocomplete="off">
            <spring:message code="item.stock_setting"/>
        </label>
    </div>
    <div class="col-sm-12" id="addArea">
        <c:import url="addItemInfo.jsp"/>
    </div>
    <div class="col-sm-12" style="display: none;" id="stockArea">
        <c:import url="itemStockTemplate.jsp"/>
    </div>
</form>