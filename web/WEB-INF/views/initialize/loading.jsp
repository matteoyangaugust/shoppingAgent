
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<t:base>
    <jsp:attribute name="javascript">
        <script src='<c:url value="/js/initialize/loading.js"/> '></script>
    </jsp:attribute>
    <jsp:attribute name="style">
        <%--<style>--%>
            <%--.spinner {--%>
                <%--margin: 100px auto;--%>
                <%--width: 40px;--%>
                <%--height: 40px;--%>
                <%--position: relative;--%>
                <%--text-align: center;--%>

                <%---webkit-animation: sk-rotate 2.0s infinite linear;--%>
                <%--animation: sk-rotate 2.0s infinite linear;--%>
            <%--}--%>

            <%--.dot1, .dot2 {--%>
                <%--width: 60%;--%>
                <%--height: 60%;--%>
                <%--display: inline-block;--%>
                <%--position: absolute;--%>
                <%--top: 0;--%>
                <%--background-color: #333;--%>
                <%--border-radius: 100%;--%>

                <%---webkit-animation: sk-bounce 2.0s infinite ease-in-out;--%>
                <%--animation: sk-bounce 2.0s infinite ease-in-out;--%>
            <%--}--%>

            <%--.dot2 {--%>
                <%--top: auto;--%>
                <%--bottom: 0;--%>
                <%---webkit-animation-delay: -1.0s;--%>
                <%--animation-delay: -1.0s;--%>
            <%--}--%>

            <%--@-webkit-keyframes sk-rotate { 100% { -webkit-transform: rotate(360deg) }}--%>
            <%--@keyframes sk-rotate { 100% { transform: rotate(360deg); -webkit-transform: rotate(360deg) }}--%>

            <%--@-webkit-keyframes sk-bounce {--%>
                <%--0%, 100% { -webkit-transform: scale(0.0) }--%>
                <%--50% { -webkit-transform: scale(1.0) }--%>
            <%--}--%>

            <%--@keyframes sk-bounce {--%>
                <%--0%, 100% {--%>
                    <%--transform: scale(0.0);--%>
                    <%---webkit-transform: scale(0.0);--%>
                <%--} 50% {--%>
                      <%--transform: scale(1.0);--%>
                      <%---webkit-transform: scale(1.0);--%>
                  <%--}--%>
            <%--}--%>
        <%--</style>--%>
    </jsp:attribute>
    <jsp:body>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1 class="labelText">Welcome...</h1>
                    <div class="spinner" style="margin:100px auto">
                        <div class="dot1"></div>
                        <div class="dot2"></div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:base>