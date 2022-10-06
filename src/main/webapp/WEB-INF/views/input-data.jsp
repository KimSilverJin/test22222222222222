<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	    <form:errors>
	    - spring에서 유효성 검사 이후에 출력을 지원하기 위해 만든 form 태그 용 유효성 검사 후 에러 메시지 처리 태그
	    - 이전에 사용했던 hasBindErrors는 세부적인 에러 처리가 가능하긴 했지만 번거롭고 복잡하고 jstl 태그를 써가며
	      여러 라이브러리들이 사용되었어야 했다.
	    - <form:errors>를 활용하게 되면 간단한 문장 하나만으로 해당 에러 메시지를 출력 할 수 있으며 에러코드의
	      디테일 정도에 따라 표시하는 메시지를 자동으로 찾아 뿌려준다.
	 --%>
	 
	 <%-- 
	 	Custom Error Message 작성법
	 	- 커스텀 에러 메시지는 properties 파일을 통해 작성가능하다.
	 	- BindingResult 객체의 결과로 나오는 코드를 통해 해당 코드를 프로퍼티의 이름으로 입력 후 해당 코드에 대한
	 	  메시지를 써주게 되면 기존의 디폴트 메시지가 프로퍼티에 명시된 메시지로 바뀌게 된다.
	 	- 단 이 경우에는 반드시 configuration 의 ReloadableResourceBundleMessageSource
	 	  메소드에서 프로퍼티 파일을 등록 시켜야 사용이 가능하다.
	 --%>
	<h1>input-data</h1>
	<form:form modelAttribute="dataVO1" action="${pageContext.request.contextPath}/input-pro" method="post">
		data1 : <form:input path="data1"/><br />
				<form:errors path="data1"/><br />
		data2 : <form:input path="data2" /><br />
				<form:errors path="data2" /><br />
		<button>전송</button>
	</form:form>
	
	<%-- 
	<h1>input-data</h1>
	<form action="${pageContext.request.contextPath}/input-pro" method="post">
		data1 : <input type="text" name="data1" id="data1" /><br />
		<spring:hasBindErrors name="dataVO1">
			<c:if test="${errors.hasFieldErrors('data1')}">
				${errors.getFieldError('data1').defaultMessage}<br />
			</c:if>
		</spring:hasBindErrors>
		data2 : <input type="text" name="data2" id="data2" /><br />
		<spring:hasBindErrors name="dataVO1">
			<c:if test="${errors.hasFieldErrors('data2')}">
				${errors.getFieldError('data2').defaultMessage}<br />
			</c:if>
		</spring:hasBindErrors>
		<button>전송</button>
	</form>
	--%>
</body>
</html>