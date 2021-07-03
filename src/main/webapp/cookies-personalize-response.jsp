<%--
  Created by IntelliJ IDEA.
  User: cisco
  Date: 7/3/21
  Time: 11:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Personalize the Cookie</title>
</head>

<%
  // read the form data
  String favLang = request.getParameter("favouriteLanguage");

  // create the cookie
    Cookie theCookie = new Cookie("myApp.favouriteLanguage", favLang);

  // set the life span... total number of seconds (Yuk!)
    theCookie.setMaxAge(60*60*24*365);

  // send cookie to browser
    response.addCookie(theCookie);
%>

<body>

<h2>
    Thanks! We set your favourite programming language: ${param.favouriteLanguage}
    <br><br>
    <a href="cookies-homepage.jsp">Return to Homepage.</a>
</h2>


</body>
</html>
