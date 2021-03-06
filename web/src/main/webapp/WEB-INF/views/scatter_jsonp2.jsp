<%@ page language="java" contentType="application/javascript; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
${callback}(
{
	"resultFrom" : ${resultFrom},
	"resultTo" : ${resultTo},
	"scatterIndex" : {
		"x":0,
		"y":1,
		"transactionId":2,
		"type":3
	},
    <jsp:useBean id="scatter" scope="request" type="java.util.List<com.navercorp.pinpoint.web.vo.scatter.Dot>"/>
	"scatter":[<c:forEach items="${scatter}" var="dot" varStatus="status">[${dot.acceptedTime},${dot.elapsedTime},"${dot.transactionId}",<c:choose><c:when test="${dot.exceptionCode == 1}">0</c:when><c:otherwise>1</c:otherwise></c:choose>]<c:if test="${!status.last}">,</c:if></c:forEach>]
});