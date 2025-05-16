<%@page import="com.lgdx.entity.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	</head>
	<body>		
		<div class="container">
			<h2>Spring MVC 05</h2>
			<div class="panel panel-info">
		    	<div class="panel-heading">Board Update Page</div>
		    	<div class="panel-body">
					<%
						Board vo = (Board)request.getAttribute("vo");
					%>
			    	<form action="boardUpdate.do" method="post">
			    		<input type="hidden" name="idx" value="<%= vo.getIdx()%>">
						<table class="table table-hover table-bordered">
							<tr>
								<td align="center">제목</td>
								<td><input type="text" class="form-control" placeholder="제목을 입력하던가" name="title" id="title" value="<%= vo.getTitle()%>"></td>
							</tr>
							<tr>
								<td align="center">내용</td>
								<td><textarea class="form-control" placeholder="내용내용내용" rows="3"  name="contents" id="contents"><%= vo.getContents() %></textarea></td>
							</tr>
							<tr>
								<td align="center">작성자</td>
								<td><input class="form-control" type="text" placeholder="누구세요?" name="writer" id="writer" value="<%= vo.getWriter()%>"></td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<a href="boardList.do">
										<button type="button" class="btn btn-info">
											돌아가기
										</button>
									</a>
									<button type="reset" class="btn btn-info">
										취소
									</button>
									<button type="submit"  class="btn btn-primary">
										수정완료
									</button>
								</td>
							</tr>	    	
						</table>
			    	</form>
					
				</div>
		    	<div class="panel-footer">LG DX - 이혜영</div>
		    </div>
		</div>
	</body>
</html>