<%@ page import="clazzes.ControllerServlet" %>
<%@ page import="clazzes.HistoryContainer" %>
<%@ page import="clazzes.HistoryEntry" %>
<%@ page import="static clazzes.STATIC_NAMES.HISTORY_CONTAINER_ATTRIBUTE_STRING" %><%--
  Created by IntelliJ IDEA.
  User: jan22
  Date: 17.04.2019
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>

<html lang="de">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <meta name="description" content="Login fehlgeschlagen">
    <meta name="author" content="Janik Mayr">
    <meta name="rating" content="safe for kids">
    <meta name="reply-to" content="admin@host.com">
    <meta name="distribution" content="global">
    <meta http-equiv="refresh" content="43200">
    <meta name="keywords"
          content="Schützenverein,Freischütz,Geltendorf,
                    Luftgewehr,Luftpistole,Lichtgewehr,
                    Jugend,Gemeinschaft,1929,
                    82269,Verein"
    >

    <title>Freischütz Geltendorf - History</title>

    <link rel="stylesheet" type="text/css" href="style.css?v=4.0">
    <link rel="stylesheet" type="text/css" href="webVars.css?v=4.0">
    <link rel="stylesheet" type="text/css" href="printVars.css?v=4.0" media="print"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        document.cookie = "last=" + window.location.href + "; expires=" + new Date(new Date().getTime() + 24 * 60 * 60 * 1000) + ";";
        $(document).ready(function(){
            $('#nav').load("nav.jsp");
            $('#footer').load("footer.html");
        });
    </script>
</head>

<body>
<nav id="nav"></nav>
<div id="content">
    <header>
        <h1>
            History
        </h1>
    </header>
    <main>
        <%
            HistoryContainer container = (HistoryContainer) request.getSession().getAttribute(HISTORY_CONTAINER_ATTRIBUTE_STRING);
            int i = 0;
            if (container != null) {
                for (HistoryEntry e : container.getEntries()) {
                    out.println("<p>[" + i + "]" + e.toDisplayString() + "</p>");
                    i++;
                }
            } else {
                out.println("Keine Historie");
            }
        %>
    </main>
</div>
<footer id="footer">
</footer>
</body>
</html>