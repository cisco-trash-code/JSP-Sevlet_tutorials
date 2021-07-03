<%--
  Created by IntelliJ IDEA.
  User: cisco
  Date: 7/3/21
  Time: 11:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
</head>
<body>

<h1>Training Portal</h1>

<%--read the favourite programming language--%>
<%
  // set the default.. if there are no cookies
  String favLang = "Java";

  // get the cookies from the request
  Cookie[] theCookies = request.getCookies();

  //find our favourite language cookie
  if(theCookies != null){
    for (Cookie tempCookie : theCookies) {
      if("myApp.favouriteLanguage".equals(tempCookie.getName())){
        favLang = tempCookie.getValue();
        break;
      }
    }
  }
%>

<%--now show the personalize page... use the "favLang" variable--%>

<h3>New Books for <%= favLang %></h3>
<ol>
  <li>Blah Blah Blah</li>
  <li>Blah Blah Blah</li>
</ol>


<h3>Latest News and Reports for <%= favLang %></h3>
<ol>
  <li>Blah Blah Blah</li>
  <li>Blah Blah Blah</li>
</ol>


<h3>Hot Jobs for <%= favLang %></h3>
<ol>
  <li>Blah Blah Blah</li>
  <li>Blah Blah Blah</li>
</ol>

<br><br>
<hr>

<a href="cookies-personalize-form.html">Personalize the page</a>


</body>
</html>
