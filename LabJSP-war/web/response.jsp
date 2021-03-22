<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : response
    Created on : 18/03/2021, 08:20:12 PM
    Author     : JEFRY
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="studentBean" scope="page" class="unipiloto.Student" />
        <jsp:setProperty name="studentBean" property="name"/>
        <jsp:setProperty name="studentBean" property="birthdate"/>
        <h1>
            <c:choose>
                <c:when test="${studentBean.HORA_ACTUAL>=0 && studentBean.HORA_ACTUAL<12}">
                    Buenos días
                </c:when>
                <c:when test="${studentBean.HORA_ACTUAL>=12 && studentBean.HORA_ACTUAL<18}">
                    Buenas tardes
                </c:when>
                <c:otherwise>
                    Buenas noches
                </c:otherwise>
            </c:choose>


             <jsp:getProperty name="studentBean" property="name" /> tu edad es
             <jsp:getProperty name="studentBean" property="edad" />
        </h1>
            
    </body>
</html>
