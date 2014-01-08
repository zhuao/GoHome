<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld" %>

        <legend>Login with Username and Password</legend>
        <c:if test="${not empty authException}">
            <div class="form-group">
                <p class="text-info text-center col-lg-6">Sign-in failed: ${fn:toLowerCase(authException.message)}</p>
            </div>
        </c:if>
        <div class="form-group">
            <label class="control-label col-lg-2" >from:</label>
            <div class="col-lg-4">
                <input type='text' class="form-control" id="j_username" name='from' value='${from}' placeholder="Enter username..." autofocus />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-lg-2 ">Password:</label>
            <div class="col-lg-4">
                <input type='text' class="form-control" id="j_password" name='to' value="${to}" placeholder="Enter password..."/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-offset-2 col-lg-4">
                <button type="submit" class="btn btn-default">Sign in</button>
            </div>
        </div>

