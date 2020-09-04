<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../js/jquery-1.12.4.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/bootstrap.js"></script>
    <title>Document</title>
</head>
<body>
	
	<!-- 계속 유지를 시켜야 되는데?! -->
	<form method = "GET" action = "/BoardTest/board/board.do" id = "searchform">
	    <div id = "search">
	        <input type="text" placeholder = "검색어를 입력하세요" name ="search">
	        <button style = "outline: none;" onclick = "$('#searchform').submit();">검색</button>
	    </div>
    </form>
    
    <table id = "tblBook">
        <tr>
            <th>번호</th>
            <th>책 제목</th>
            <th>출판사</th>
        </tr>
        <c:forEach items = "${dtoList}" var = "dto">
        	<tr>
        		<td>${dto.seq}</td>
        		<td>${dto.subject}</td>
        		<td>${dto.content}</td>        		
        	</tr>	
        </c:forEach>


    </table>

    <div id = "pagebar">
		${pagebar}
    </div>
    
    

    <style>

        /* 검색 */
        #search {
            /* border: 1px solid red; */
            width : 240px;
            height : 25px;
            margin-left : 1025px;
            margin-top : 20px;
        }

        /* 페이징 처리 */
        #pagebar {
            /* border: 1px solid red; */
            width : 300px;
            margin: 0px auto;
        }
        
        #pagebar li{
            list-style: none;
            display: inline;
        }

        /* 게시판 */
        #tblBook {
            border: 1px solid black;
            border-collapse: collapse;
            margin : 10px auto;
            width : 600px;
            text-align: center;
        }
        #tblBook td,th {
            border: 1px solid black;
        }
        #tblBook th {
            background-color: blueviolet;
        }
    </style>

</body>
</html>