<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>index</title>
    
    <link rel = "stylesheet" type = "text/css" href = "css/style.css" />
</head>

<body>

    <form action = "/submit" method = "POST">

    	<!-- <c:choose>
    		<c:when test = "${empty error}"></c:when>
    		<c:otherwise><p style = "color: red;">${ error }</p></c:otherwise>
    	</c:choose> -->

    	<span>
    		<label for = "name">Your Name:</label>
    		<input type = "text" name = "name" required />
    	</span>
    	
    	<span>
    		<label for = "location">Dojo Location:</label>
    		<select name = "location">
    			<option value = "San Hose" selected>San Jose</option>
    			<option value = "Burbank">Burbank</option>
    		</select>
    	</span>
    	
    	<span>
    		<label for = "favLang">Favorite Language:</label>
    		<select name = "favLang">
    			<option value = "Python" selected>Python</option>
    			<option value = "Java">Java</option>
    			<option value = "JavaScript">JavaScript</option>
    		</select>
    	</span>
    	
    	<span>
    		<label for = "comment">Comment (optional):</label>
    		<textarea name = "comment"></textarea>
    	</span>
    	
    	<input type = "submit" value = "Submit" />
    </form>

</body>

</html>