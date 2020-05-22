<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<jsp:include page="../include/header.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 1. 텍스트를 오른쪽,왼쪽,중앙 정렬 -->
<!-- 2. 테이블을 가운데로 자동 정렬-->
<style>


#box1 { text-align: right; } 
#box2 { text-align: left; } 
#box3 { text-align: center; } 


table {
margin: auto;
}

div.button

{

   margin: auto;

   width:26%;

}



div.button input

{

   padding: 5px;

   width: 30%;

   font-size: 18px;

}
  </style>
  
 
 




<br>
<br>
<br>
<br>

<div class="box3"> </div>
 
	<div class="row">
		<div class="col-lg-2"></div>
		<div class="col-lg-8">
			<div class="panel-body">
			
			<h2>
			
			<div id="box3"> 
			<span id="box3" style="color: #3232FF;">회원정보</span> 
			</div> 
				 

				</h2>
				
				
				<table class="table table-bordered table-hover">
				
				<div id="box3">
					<thead>
						<tr
							style="background-color: #3232FF; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">
							<th>아이디</th>
							<!-- td나 th나 기능은 같음. -->
							<th>이름</th>
							<th>가입일자</th>
							
						</tr>
					</thead>
               </div>
               
               
			 <form role="form" method="post">
				 <c:if test="${not empty login}">
				<tr>
				<td>
				계정 : <input type="text" name="account" value="${userinfo.account}"><br>
				</td>
                  <td>
                                이름 : <input type="text" name="name" value="${userinfo.name}"}><br>
                  </td>
                  <td>
                  	 ${userinfo.regDate}
                  </td>
				</tr>
				</c:if>
				</table>
				
				<div class="button">

    
    <input type="submit" value="수정" onclick="return confirm('수정하시겠습니까?')"/><br/>
  

</div>
</div>
</div>
</div>
</div>
</div>


			</form>
				
</body>


<script>


//수정 완료 알림창 처리
const msg = "${msg}";
if(msg === "modSuccess") {
	
	alert("회원 수정완료!");
}




</script>

		<jsp:include page="../include/footer.jsp" />
		</html>
		