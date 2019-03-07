<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="row loginTemplate">
    <div class="offset-sm-2 col-sm-8 mt-5" id="loginDiv" align="center">
        <form class="mt-sm-5" action='<c:url value="/j_spring_security_check"/> ' method="post">
            <label class="mt-5"><h3 class="text-muted">Login</h3></label>
            <div class="form-group row">
                <div class="offset-sm-2 col-sm-8" align="center">
                    <input type="text" class="form-control" id="j_username" name="j_username" placeholder="username">
                </div>
                <div class="offset-sm-2 col-sm-8" align="center">
                    <input type="password" class="form-control" id="j_password" name="j_password" placeholder="password">
                </div>
            </div>
            <button type="submit" class="btn btn-secondary submitBtn mt-3 mb-3">
                <i class="fa fa-4x fa-arrow-right" aria-hidden="true"></i>
            </button>
        </form>
    </div>
</div>