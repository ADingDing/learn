<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.lang3.StringUtils"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <span>Hello World!</span>
    <%
        Enumeration<String> ans = request.getAttributeNames();
        while (ans.hasMoreElements()) {
            String an = ans.nextElement();
            System.out.println(an + " →  " + request.getAttribute(an));

        }
        String a = (String) request.getParameter("a");
        if (StringUtils.isNotBlank(a)) {
            System.out.println(a.length());
    %>
    <%=a.length()%>
    <%
        }
    %>
</body>
</html>