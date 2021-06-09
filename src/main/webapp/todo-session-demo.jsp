<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: cisco
  Date: 6/9/21
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ToDo Session Demo</title>
</head>
<body>
    <h1>
        <form action="todo-session-demo.jsp">
            Add New ToDo Item: <input type="text" name="todoItem" />
            <input type="submit" value="Add" />
        </form>

        <%
            List<String> items = (List<String>) session.getAttribute("todoList");
            if(items == null){
                items = new ArrayList<>();
                session.setAttribute("todoList", items);
            }
            String todo = request.getParameter("todoItem");
            if(todo != null){
                items.add(todo);
            }
        %>
        <br><br>
        <hr>
        <br>
        To Do Items:
        <ol>
            <%
                for (String item : items) {
                    out.println("<li>" + item + "</li>");
                }
            %>
        </ol>
    </h1>
</body>
</html>
