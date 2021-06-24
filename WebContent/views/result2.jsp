<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.html"%>
<p>注文番号：${orderBean.order_no}</p>
<p>支払い方法：${orderBean.payment}</p>
<p>配達方法：${orderBean.delivery}</p>
<p>ご購入ありがとうございました。</p>


<%@include file="../footer.html"%>