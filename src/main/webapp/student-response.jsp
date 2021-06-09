<%--
  Created by IntelliJ IDEA.
  User: cisco
  Date: 6/9/21
  Time: 2:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Response</title>
</head>
<body>
    <h1>
        Student Full Name: ${param.firstName} ${param.lastName}
        <br><br>
        Student Country: ${param.country}
        <br><br>
        Student Gender: ${param.gender}
        <br><br>
        Student Favourite Programming Languages:
        <ol>
            <%
                for (String favLanguage : request.getParameterValues("favLanguage")) {
                    out.println("<li>"+ favLanguage + "</li>");
                }
            %>
        </ol>
    </h1>
    <a href="student-form.html">Back To Student Form</a>
</body>
</html>
