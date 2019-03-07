<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<t:base>
    <jsp:attribute name="javascript">
        <script src='<c:url value="/js/mall/shopping/items.js"/>'></script>
    </jsp:attribute>
    <jsp:attribute name="style">
        <link rel="stylesheet" href='<c:url value="/css/mall/shopping/items.css"/>'>
    </jsp:attribute>
    <jsp:body>
        <div id="template" style="display: none">
            <c:import url="itemInfoTemplate.jsp"></c:import>
        </div>
        <hr class="col-sm-12 style14 labelText">
        <div class="container">
            <div class="row">
                <c:import url="../../filter.jsp"></c:import>
                <div class="mb-3 items">
                    <div class="itemPic">
                        <img src='<c:url value="/images/test.jpg"/>' class="coverPhoto">
                    </div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
                <div class="mb-3 items">
                    <div class="itemPic"><img src='<c:url value="/images/test.jpg"/>' class="coverPhoto"></div>
                    <div class="itemInfoGroup text-center">
                        <div class="labelText itemInfoName">商品A</div>
                        <div class="labelText itemInfoPrice">$3000</div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="col-sm-12 style14 labelText">
    </jsp:body>
</t:base>