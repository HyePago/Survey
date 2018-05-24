<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="vote_serveyProcForm.jsp" method="post">
		<div class="choice_div">
			<table>
				<tr>
					<td> 이름 혹은 자신을 상징하는 단어를 적어주세요. </td>
				</tr>
				<tr>	
					<td> <input type="text" name="name" required> <hr> </td>
				</tr>
				<tr>
					<td> 비밀번호를 입력해주세요. </td>
				</tr>
				<tr>
					<td> <input type="password" name="pw" required> <hr> </td> 
				</tr>
				<tr>
					<td>눈 앞에 여러가지 물건이 있다. <br> 제일 먼저 잡고 싶은 물건은 무엇인가?</td>
				</tr>
				<tr>
					<td>
						<input type="radio" name="q1" value="1" checked> 1. 과일 &nbsp;
						<input type="radio" name="q1" value="2"> 2. 떡  &nbsp;
						<input type="radio" name="q1" value="3"> 3. 수정구슬 &nbsp;
						<input type="radio" name="q1" value="4"> 4. 현찰 &nbsp;
						<input type="radio" name="q1" value="5"> 5. 반지 &nbsp;
						<hr>
					</td>
				</tr>
				<tr>
					<td>손을 쫙 폈다가 엄지손가락을 먼저 접고, 나머지 손가락으로 엄지를 감싸며 주먹쥔다. <br> 손가락 하나만 편다면 무엇?</td>
				</tr>
				<tr>
					<td>
						<input type="radio" name="q2" value="1" checked> 1. 엄지 &nbsp;
						<input type="radio" name="q2" value="2"> 2. 검지  &nbsp;
						<input type="radio" name="q2" value="3"> 3. 중지 &nbsp;
						<input type="radio" name="q2" value="4"> 4. 약지 &nbsp;
						<input type="radio" name="q2" value="5"> 5. 소지 &nbsp;
						<hr>
					</td>
				</tr>
				<tr>
					<td>붕어빵을 어느 부위부터 먹는가?</td>
				</tr>
				<tr>
					<td>
						<input type="radio" name="q3" value="1" checked> 1. 머리 &nbsp;
						<input type="radio" name="q3" value="2"> 2. 지느러미  &nbsp;
						<input type="radio" name="q3" value="3"> 3. 배 &nbsp;
						<input type="radio" name="q3" value="4"> 4. 꼬리 &nbsp;
						<hr>
					</td>
				</tr>
				<tr>
					<td>강아지를 잃어버려서 실종신고를 했다가 찾았는데, 그 장소는 어디일까?</td>
				</tr>
				<tr>
					<td>
						<input type="radio" name="q4" value="1" checked> 1. 집안 &nbsp;
						<input type="radio" name="q4" value="2"> 2. 이웃집  &nbsp;
						<input type="radio" name="q4" value="3"> 3. 놀이터 &nbsp;
						<input type="radio" name="q4" value="4"> 4. 큰길가 &nbsp;
						<hr>
					</td>
				</tr>
				<tr>
					<td>당신은 지금 엘레베이터 앞에 있습니다. 엘레베이터를 기다리는 당신의 모습은 어떤가요?</td>
				</tr>
				<tr>
					<td>
						<input type="radio" name="q5" value="1" checked> 1. 발을 동동구르고 있다 <br>
						<input type="radio" name="q5" value="2"> 2. 계속 엘리베이터 버튼을 누르고 있다  <br>
						<input type="radio" name="q5" value="3"> 3. 주변을 둘러보거나 안내판 등을 보고 있다 <br>
						<input type="radio" name="q5" value="4"> 4. 그냥 바닥을 쳐다보고 있다 <br>
						<input type="radio" name="q5" value="5"> 5. 엘리베이터 LED화면을 계속 보면서 '문 열리자마자 타야지' 생각하고 있다 <br>
						<hr>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="제출"> 
						<input type="button" onclick="location.href='resultChoice.jsp'" value="처음으로">	
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>