<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/icofont/icofont.min.css">
    <style>
        #ntboard {
            border: 1px solid black;
            border-collapse: collapse;
            width : 400px;
            height : 200px;
            margin : 10px auto;
            margin-bottom: 0px;

        }
        #ntboard th {
            border: 1px solid black;
            text-align: center;
            height : 30px;
            background-color: aquamarine;
        }
        #ntboard td {
            border: 1px solid black;
            text-align: center;
        }
        #paging {
            /* border: 1px solid red; */
            width : 250px;
            height : 50px;
            margin: 20px 44%;
        }
        #paging li {
            float: left;
            margin-right: 10px;
            list-style : none;
        }
        #paging li > a {
            color: black;
        }
        #generate {
            /* border: 1px solid red; */
            width : 60px;
            margin : 10px 57.3%;
        }
        #addbtn:hover {
            cursor: pointer;
        }
        #searchbox {
            /* border: 1px solid red; */
            width : 300px;
            margin: 0px 47.8%;
            margin-top : 30px;        
        }
            
    </style>
</head>
<body>
    
    <form method = "GET" action = "/BoardTest/board1/boardtest1.do" id = "searchform">
    <div id = "searchbox">
        <c:if test = "${not empty search}">
        	<input type="text" id = "search" name = "search" placeholder = "검색어를 입력하세요" value = "${search}">
        </c:if>
        <c:if test = "${empty search}">
        	<input type="text" id = "search" name = "search" placeholder = "검색어를 입력하세요">
        </c:if>
        <button onclick = "$('#searchform').submit();"><i class="icofont-search-1"></i>검색</button>
    </div>
    </form>
    <table id = "ntboard">
        <tr>
            <th>번호</th>
            <th>이름</th>
            <th>부서</th>
            <th>직위</th>
        </tr>
		<c:forEach items = "${list}" var = "dto">
			<tr>
				<td>${dto.seq}</td>
				<td>${dto.name}</td>
				<td>${dto.buseo}</td>
				<td>${dto.jikwi}</td>
			</tr>
		</c:forEach>
    </table>

    <div id = "generate">
        <button id = "addbtn"><i class="icofont-ui-add"></i> 추가</button>
    </div>

    <div id = "paging">
        <ul>
			${pagebar}
        </ul>
    </div>

    <script>

    </script>


</body>
</html>