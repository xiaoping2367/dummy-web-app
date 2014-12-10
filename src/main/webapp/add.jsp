<jsp:useBean id="faculties" scope="request" type="java.util.List" />
<jsp:useBean id="student" scope="request" class="by.naxa.model.Student" />
<jsp:useBean id="facultyName" scope="request" class="java.lang.String" />
<%--
  Created by IntelliJ IDEA.
  User: naXa!
  Date: 09.12.2014
  Time: 17:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Add student profile</title>
</head>
<body>
    <form name="form1" action="add" method="POST">
        <div align="center">
            <br /><br />
            <label>
                Student's name:
            <c:if test="${empty student}">
                <input name="name" type="text" size="25" value=" Enter student's name here" required />
            </c:if>
            <c:if test="${not empty student}">
                <input name="name" type="text" size="25" value="${student.name}" required />
            </c:if>
            </label><br />
            <label>
                Student's profile photo:
                <input id="photo" type="image" draggable="true" />
            </label><br />
            <label>
                Student's faculty:
                <select name="faculty" required>
                <c:forEach items="${faculties}" var="faculty">
                    <c:if test="${facultyName eq faculty.name}">
                    <option selected>${faculty.name}</option>
                    </c:if>
                    <c:if test="${not (facultyName eq faculty.name)}">
                        <option>${faculty.name}</option>
                    </c:if>
                </c:forEach>
                </select>
            </label><br />
            <label>
                Student's rates:
                <input name="rates" type="text" value="Enter student's rates here" />
            </label><br />
            <c:if test="${empty student}">
                <input name="id" type="hidden" value="0" />
            </c:if>
            <c:if test="${not empty student}">
                <input name="id" type="hidden" value="${student.id}" />
            </c:if>
            <br /><br />
            <button type="submit">Save</button>
            <br /><br />
        </div>
    </form>
</body>
</html>
