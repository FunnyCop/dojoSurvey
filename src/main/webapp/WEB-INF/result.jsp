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

    <div class = "results">
    	<div class = "row">
    		<p>Name:</p>
    		<p>${ name }</p>
    	</div>
    	
    	<div class = "row">
    		<p>Location:</p>
    		<p>${ location }</p>
    	</div>
    	
    	<div class = "row">
    		<p>Favorite Language:</p>
    		<p>${ favLang }</p>
    	</div>
    	
    	<div class = "row">
    		<p>Comment:</p>
    		<p>${ comment }</p>
    	</div>
    	
    	<button><a href = "http://localhost:8080">Go Back</a></button>
    </div>

</body>

</html>