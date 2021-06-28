<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.html"%>

<p>test</p>

<c:set var="total" value="${1 + 1}" />

<p>--------------</p>

<c:out value="${total}" />


<%@include file="../footer.html"%>