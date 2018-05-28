<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String q1 = request.getParameter("q1");
		String q2 = request.getParameter("q2");
		String q3 = request.getParameter("q3");
		String q4 = request.getParameter("q4");
		String q5 = request.getParameter("q5");
		
		String return_q1 = null;
		String return_q2 = null;
		String return_q3 = null;
		String return_q4 = null;
		String return_q5 = null;
		
		switch(q1){
		case "1":
			return_q1 = "과일을 선택한 당신은 생각이 많고, 진지해보이는 연상 타입에게 반합니다.";
			break;
		case "2":
			return_q1 = "떡을 선택한 당신은 무드에 약해 화수로가 매너가 좋은 타입에게 반합니다.";
			break;
		case "3":
			return_q1 = "수정구슬을 선택한 당신은 정열적이고 열중하는 타입의 이성에게 반합니다.";
			break;
		case "4":
			return_q1 = "현찰을 선택한 당신은 부드럽고 따뜻한 이성에게 반합니다.";
			break;
		case "5":
			return_q1 = "반지를 선택한 당신은 보호해줄 수 있는 연하의 이성에게 반합니다.";
		}
		
		switch(q2){
		case "1":
			return_q2 = "엄지를 선택한 당신, 사랑 밖에 모르는 일편단심 민들레유형입니다.";
			break;
		case "2":
			return_q2 = "검지를 선택한 당신, 자유로운 연애를 즐기는 사랑꾼유형입니다.";
			break;
		case "3":
			return_q2 = "중지를 선택한 당신, 육체적 사랑을 중시하는 욕망 덩어리유형입니다.";
			break;
		case "4":
			return_q2 = "약지를 선택한 당신, 힘들고 슬픈 사랑을 하는 비련의 주인공유형입니다.";
			break;
		case "5":
			return_q2 = "소지를 선택한 당신, 동화 속 순수한 사랑을 꿈꾸는 이상주의자유형입니다.";
		}
		
		switch(q3){
		case "1":
			return_q3 = "머리를 선택한 당신, 지금 사귀는 사람이 있다면 다른 이성에게 전혀 관심을 주지 않는 스타일입니다.";
			break;
		case "2":
			return_q3 = "지느러미를 선택한 당신, 바람기가 많으며, 걸리지만 않으면 된다고 생각하는 아주 나쁜 스타일입니다.";
			break;
		case "3":
			return_q3 = "배를 선택한 당신, 기회만 생기면 바람 필 스타일입니다.";
			break;
		case "4":
			return_q3 = "꼬리를 선택한 당신, 바람 피우는 것이 스스로도 용납되지 않는 스타일입니다.";
		}
		
		switch(q4){
		case "1":
			return_q4 = "집 안을 선택한 당신은 위험하지 않는 안전한 '집'에서 하고 싶어하는 군요.";
			break;
		case "2":
			return_q4 = "이웃집을 선택한 당신은 '여행지'처럼 색다른 곳에서 하고 싶어하는 군요.";
			break;
		case "3":
			return_q4 = "놀이터를 선택한 당신은 다소 공개적인 '호프집, 비디오방, 노래방'과 같은 곳에서 하고 싶어하는 군요.";
			break;
		case "4":
			return_q4 = "큰길가를 선택한 당신은 은밀한 '호텔, 모텔'같은 곳에서 하고 싶어하는 군요.";
		}
		
		switch(q5){
		case "1":
			return_q5 = "다소 예민하고 신경질적이며, 예술저긍로 소질이 있어 특기가 생깁니다.";
			break;
		case "2":
			return_q5 = "생각을 오래하기 보다는 몸을 먼저 움직이는 행동력이 강한 사람입니다.<br>어떤 하나의 일에 집중하게 되면 다른 것들은 눈에 잘 안들어와서 한가지 일을 제외하고 다른 것들은 소홀히하는 경우가 있습니다.<br>다만, 행동적이고 재치가 있어 사람들에게 인기가 좋습니다.";
			break;
		case "3":
			return_q5 = "마음이 따뜻하며 온화하고 인기가 많습니다.<br>하지만 자신의 결점에 대해 알려지는 것을 꺼려해 사람들과 벽을 쌓는 경우가 있습니다.<br>이로인해 사람들은 이 사람을 냉정하다고 오해하기도 합니다.<br>인맥은 넓지 않으나 한명이라도 깊게 관계를 맺어하는 성향으로 이공계쪽에 잘 어울립니다.";
			break;
		case "4":
			return_q5 = "다소 소극적이기 하지만 상당히 솔직함을 가지고 있습니다.<br>타인을 믿는다거나 좋아하게 되는데에 있어 거부감을 느끼지 않기 때문에 대인관계가 넓고 다툼이 적습니다.";
			break;
		case "5":
			return_q5 = "안정적인 것을 좋아해 큰 리스크를 안고 무리하게 진행하지 않습니다.<br>어떤 인간관계에 있어 문제가 있어도 합리적으로 어긋난 것을 하지 않는 편입니다.<br>감정적으로 해결하기보다는 이성적으로, 논리적으로 행동하기 때문에 사람들이 많이 따르는 편입니다.";
			break;
		}
	%>
	<div class="choice_div">
		<table class="table_vote">
			<tr>
				<td>A. 반하는 이성의 타입</td>
			</tr>
			<tr>
				<td><%= return_q1 %> <hr> </td>
			</tr>
			<tr>
				<td>A. 사랑 유형 타입</td>
			</tr>
			<tr>
				<td><%= return_q2 %> <hr></td>
			</tr>
			<tr>
				<td>A. 바람기 테스트</td>
			</tr>
			<tr>
				<td><%= return_q3 %> <hr> </td>
			</tr>
			<tr>
				<td>A. 원하는 첫키스 장소</td>
			</tr>
			<tr>
				<td><%= return_q4 %> <hr> </td>
			</tr>
			<tr>
				<td>A. 성격 테스트 </td>
			</tr>
			<tr>
				<td><%= return_q5 %> <hr> </td>
			</tr>
			<tr>
				<td>
					<input type="button" value="결과보기" class="choice_btn" onclick="location.href='resultView.jsp'">&nbsp;
					<input type="button" value="처음으로" class="choice_btn" onclick="location.href='index.jsp'">
				</td>
			</tr>
		</table>
	</div>
</body>
</html>