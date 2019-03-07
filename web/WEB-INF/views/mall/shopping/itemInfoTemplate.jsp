<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<form class="row swalLabelText itemInfoTmp text-center" method="post" action='<c:url value="/mall/reserve/info.do"/>'>
    <div class="col-sm-12 mt-0 mb-2">
        <h1 class="text-center" style="font-size: 50px">
            <spring:message code="item_info"/>
            &
            <spring:message code="buy"/>
        </h1>
    </div>
    <div class="mall_item_photo_block">
        <img src='<c:url value="/images/test.jpg"/>'>
    </div>
    <div class="mall_item_info_block row">
        <div class="col-sm-12 form-inline">
            <div class="swalLabelText-middle-gray" style="width:30%; text-align: left">
                <spring:message code="item.name"/>
            </div>
            <div style="width:70%; text-align: left">
                測試貨品名稱
            </div>
        </div>
        <div class="col-sm-12 form-inline">
            <div class="swalLabelText-middle-gray" style="width:30%; text-align: left">
                <spring:message code="item.description"/>
            </div>
            <div style="width:70%; text-align: left">
                After all Google search still reaches all of your target market and beyond.
            </div>
        </div>
        <div class="col-sm-12 form-inline">
            <div class="swalLabelText-middle-gray" style="width:30%; text-align: left">
                <spring:message code="item.selling_price"/>
            </div>
            <div style="width:70%; text-align: left">
                $80
            </div>
        </div>
        <div class="col-sm-12 form-inline">
            <div class="swalLabelText-middle-gray" style="width:30%; text-align: left">
                <spring:message code="item.color"/>
            </div>
            <div style="width:70%; text-align: left;">
                <select class="custom-select" name="color" id="color">
                    <option value="1">Yellow</option>
                    <option value="2">Green</option>
                    <option value="3">Red</option>
                </select>

            </div>
        </div>
        <div class="col-sm-12 form-inline">
            <div class="swalLabelText-middle-gray" style="width:30%; text-align: left">
                <spring:message code="item.size"/>
            </div>
            <div style="width:70%; text-align: left;">
                <div class="col-sm-12 form-inline">
                    <div style="width:20%; text-align: left">XXL</div>
                    <div style="width:50%; text-align: left">
                        <input type="text" class="form-control w-100" placeholder='<spring:message code="mall.key_in_quantity_to_buy"/>'>
                    </div>
                </div>
                <div class="col-sm-12 form-inline">
                    <div style="width:20%; text-align: left">XL</div>
                    <div style="width:50%; text-align: left">
                        <input type="text" class="form-control w-100" placeholder='<spring:message code="mall.key_in_quantity_to_buy"/>'>
                    </div>
                </div>
                <div class="col-sm-12 form-inline">
                    <div style="width:20%; text-align: left">L</div>
                    <div style="width:50%; text-align: left">
                        <input type="text" class="form-control w-100" placeholder='<spring:message code="mall.key_in_quantity_to_buy"/>'>
                    </div>
                </div>
                <div class="col-sm-12 form-inline">
                    <div style="width:20%; text-align: left">M</div>
                    <div style="width:50%; text-align: left">
                        <input type="text" class="form-control w-100" placeholder='<spring:message code="mall.key_in_quantity_to_buy"/>'>
                    </div>
                </div>
                <div class="col-sm-12 form-inline">
                    <div style="width:20%; text-align: left">S</div>
                    <div style="width:50%; text-align: left">
                        <input type="text" class="form-control w-100" placeholder='<spring:message code="mall.key_in_quantity_to_buy"/>'>
                    </div>
                </div>
                <div class="col-sm-12 form-inline">
                    <div style="width:20%; text-align: left">XS</div>
                    <div style="width:50%; text-align: left">
                        <input type="text" class="form-control w-100" placeholder='<spring:message code="mall.key_in_quantity_to_buy"/>'>
                    </div>
                </div>
            </div>
        </div>
        <div class="btn-group col-sm-12">
            <button type="button" class="btn btn-outline-secondary w-100 reserve">
                <spring:message code="mall.reserve"/>
            </button>
            <button type="button" class="btn btn-outline-secondary w-100">
                <i class="fa fa-shopping-cart fa-2x"></i>
                <spring:message code="mall.addToCart"/>
            </button>
            <button type="button" class="btn btn-outline-secondary w-100">
                <i class="fa fa-heart"></i>
                <spring:message code="mall.addToFavorite"/>
                <br>
                (<spring:message code="member_only"/>)
            </button>
        </div>
    </div>
</form>