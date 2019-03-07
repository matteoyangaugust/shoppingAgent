
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<t:base>
    <jsp:attribute name="javascript">
        <script src='<c:url value="/js/manage/member/edit.js"/>'></script>
    </jsp:attribute>
    <jsp:attribute name="style">
        <link rel="stylesheet" href='<c:url value="/css/manage/member/edit.css"/>'>
    </jsp:attribute>
    <jsp:body>
        <div id="template" style="display: none">
            <c:import url="addMemberTemplate.jsp"></c:import>
        </div>
        <hr class="col-sm-12 style14 labelText">
        <div class="container">
            <div class="row">
                <c:import url="../../filter.jsp"></c:import>
                <div class="col-sm-12 member labelText mt-2 mb-2">
                    <div class="row p-2">
                        <div class="col-sm-12" style="padding-left: 0px; padding-right: 0px">
                            <div class="col-sm-12 form-inline ">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.username"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="Matt" placeholder="Username">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-left: 0px; padding-right: 0px">
                            <div class="col-sm-12 form-inline">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.facebook_name"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="Matteo" placeholder="Facebook Name">
                            </div>
                            <div class="col-sm-12 form-inline" >
                                <div style="float: left; width:20%">
                                    <spring:message code="member.phone"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="0912-345678" placeholder="Phone">
                            </div>
                            <div class="col-sm-12 form-inline">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.email"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="zatman823@hotmail.com" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-sm-12 form-inline justify-content-center mt-2">
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="modify"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="member.activate"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="member.disabled"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="delete"/>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 member labelText mt-2 mb-2">
                    <div class="row p-2">
                        <div class="col-sm-12" style="padding-left: 0px; padding-right: 0px">
                            <div class="col-sm-12 form-inline justify-content-center">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.username"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="Matt" placeholder="Username">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-left: 0px; padding-right: 0px">
                            <div class="col-sm-12 form-inline justify-content-center">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.facebook_name"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="Matteo" placeholder="Facebook Name">
                            </div>
                            <div class="col-sm-12 form-inline justify-content-center" >
                                <div style="float: left; width:20%">
                                    <spring:message code="member.phone"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="0912-345678" placeholder="Phone">
                            </div>
                            <div class="col-sm-12 form-inline justify-content-center">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.email"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="zatman823@hotmail.com" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-sm-12 form-inline justify-content-center mt-2">
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="modify"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="member.activate"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="member.disabled"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="delete"/>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 member labelText mt-2 mb-2">
                    <div class="row p-2">
                        <div class="col-sm-12" style="padding-left: 0px; padding-right: 0px">
                            <div class="col-sm-12 form-inline justify-content-center">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.username"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="Matt" placeholder="Username">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-left: 0px; padding-right: 0px">
                            <div class="col-sm-12 form-inline justify-content-center">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.facebook_name"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="Matteo" placeholder="Facebook Name">
                            </div>
                            <div class="col-sm-12 form-inline justify-content-center" >
                                <div style="float: left; width:20%">
                                    <spring:message code="member.phone"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="0912-345678" placeholder="Phone">
                            </div>
                            <div class="col-sm-12 form-inline justify-content-center">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.email"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="zatman823@hotmail.com" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-sm-12 form-inline justify-content-center mt-2">
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="modify"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="member.activate"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="member.disabled"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="delete"/>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 member labelText mt-2 mb-2">
                    <div class="row p-2">
                        <div class="col-sm-12" style="padding-left: 0px; padding-right: 0px">
                            <div class="col-sm-12 form-inline justify-content-center">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.username"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="Matt" placeholder="Username">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-left: 0px; padding-right: 0px">
                            <div class="col-sm-12 form-inline justify-content-center">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.facebook_name"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="Matteo" placeholder="Facebook Name">
                            </div>
                            <div class="col-sm-12 form-inline justify-content-center" >
                                <div style="float: left; width:20%">
                                    <spring:message code="member.phone"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="0912-345678" placeholder="Phone">
                            </div>
                            <div class="col-sm-12 form-inline justify-content-center">
                                <div style="float: left; width:20%">
                                    <spring:message code="member.email"/>:
                                </div>
                                <input style="float: left; width:50%; margin-left: 40px" type="text" class="form-control" value="zatman823@hotmail.com" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-sm-12 form-inline justify-content-center mt-2">
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="modify"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="member.activate"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="member.disabled"/>
                            </button>
                            <button type="button" class="btn btn-outline-secondary w-50">
                                <spring:message code="delete"/>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="col-sm-12 style14 labelText">
    </jsp:body>
</t:base>