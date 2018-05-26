<%@page import="java.util.ArrayList"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Nwagon.css" type="text/css">
<script src="Nwagon.js"></script>
</head>
<body>
	<%
		String filePath = application.getRealPath("/WEB-INF/survey/list.txt");
		
		BufferedReader reader = null;
		
		ArrayList<String> username = new ArrayList<String>();
		int question_01[] = new int[]{0,0,0,0,0};
		int question_02[] = new int[]{0,0,0,0,0};
		int question_03[] = new int[]{0,0,0,0};
		int question_04[] = new int[]{0,0,0,0};
		int question_05[] = new int[]{0,0,0,0,0};
		
		int i = 0;
		
		try{
			reader = new BufferedReader(new FileReader(filePath));
			
			while(true){
				String str = reader.readLine();
				
				if(str == null) break;
				
				String[] info = str.split("\t");
				
				username.add(i, info[0]);
				i++;
				
				question_01[Integer.parseInt(info[2])-1]++;
				question_02[Integer.parseInt(info[3])-1]++;
				question_03[Integer.parseInt(info[4])-1]++;
				question_04[Integer.parseInt(info[5])-1]++;
				question_05[Integer.parseInt(info[6])-1]++;
			}
		} catch(Exception e){
			e.printStackTrace();
		}
	%>
	
	<div class="choice_div">
		<table>
			<tr>
				<td><input type="button" value="기록 다 지우기" onclick="location.href='delete_all.jsp'"></td>
			</tr>
			<tr>
				<td> 투표한 사람 목록 </td>
			</tr>
			<tr>
				<td>
					<div style="overflow:scroll; width:600px; height:150px; padding:10px;">
						<ul class="manager_View_Form_ul">
							<% for(i = 0; i<username.size(); i++) { %>
								<li> <a href="answer.jsp?pageNumber=<%= i+1 %>"><%= username.get(i) %></a> </li>
							<% } %>
						</ul>
					</div>
				</td>
			</tr>
			<tr>
				<td>눈 앞에 여러가지 물건이 있다. <br> 제일 먼저 잡고 싶은 물건은 무엇인가?</td>
			</tr>
			<tr>
				<td><div id="div_question_01"></div></td>
			</tr>
			<tr>
				<td><h3>반하는 이성의 타입</h3></td>
			</tr>
			<tr>
				<td>
					<details>
    					<summary>1. 과일</summary>
   						과일을 선택한 당신은 생각이 많고, 진지해보이는 연상 타입에게 반합니다.
   					</details>
   					<details>
   						<summary>2. 떡</summary>
   						떡을 선택한 당신은 무드에 약해 화수로가 매너가 좋은 타입에게 반합니다.
   					</details>
   					<details>
   						<summary>3. 수정구슬</summary>
   						수정구슬을 선택한 당신은 정열적이고 열중하는 타입의 이성에게 반합니다.
   					</details>
   					<details>
   						<summary>4. 현찰</summary>
   						현찰을 선택한 당신은 부드럽고 따뜻한 이성에게 반합니다.
   					</details>
   					<details>
   						<summary>5. 반지</summary>
   						반지를 선택한 당신은 보호해줄 수 있는 연하의 이성에게 반합니다.
  					</details>
  					<hr>
				</td>
			</tr>
			<tr>
				<td>손을 쫙 폈다가 엄지손가락을 먼저 접고, 나머지 손가락으로 엄지를 감싸며 주먹쥔다. <br> 손가락 하나만 편다면 무엇?</td>
			</tr>
			<tr>
				<td><div id="div_question_02"></div></td>
			</tr>
			<tr>
				<td><h3>사랑 유형 타입</h3></td>
			</tr>
			<tr>
				<td>
					<details>
    					<summary>1. 엄지</summary>
   						엄지를 선택한 당신, 사랑 밖에 모르는 일편단심 민들레유형입니다.
   					</details>
   					<details>
   						<summary>2. 검지</summary>
   						검지를 선택한 당신, 자유로운 연애를 즐기는 사랑꾼유형입니다.
   					</details>
   					<details>
   						<summary>3. 중지</summary>
   						중지를 선택한 당신, 육체적 사랑을 중시하는 욕망 덩어리유형입니다.
   					</details>
   					<details>
   						<summary>4. 약지</summary>
   						약지를 선택한 당신, 힘들고 슬픈 사랑을 하는 비련의 주인공유형입니다.	
   					</details>
   					<details>
   						<summary>5. 소지</summary>
   						소지를 선택한 당신, 동화 속 순수한 사랑을 꿈꾸는 이상주의자유형입니다.
  					</details>
  					<hr>
				</td>
			</tr>
			<tr>
				<td>붕어빵을 어느 부위부터 먹는가?</td>
			</tr>
			<tr>
				<td><div id="div_question_03"></div></td>
			</tr>
			<tr>
				<td><div id="div_question_02"></div></td>
			</tr>
			<tr>
				<td><h3>바람기 테스트</h3></td>
			</tr>
			<tr>
				<td>
					<details>
    					<summary>1. 머리</summary>
   						머리를 선택한 당신, 지금 사귀는 사람이 있다면 다른 이성에게 전혀 관심을 주지 않는 스타일입니다.
   					</details>
   					<details>
   						<summary>2. 지느머리</summary>
   						지느러미를 선택한 당신, 바람기가 많으며, 걸리지만 않으면 된다고 생각하는 아주 나쁜 스타일입니다.
   					</details>
   					<details>
   						<summary>3. 배</summary>
   						배를 선택한 당신, 기회만 생기면 바람 필 스타일입니다.
   					</details>
   					<details>
   						<summary>4. 꼬리</summary>
   						꼬리를 선택한 당신, 바람 피우는 것이 스스로도 용납되지 않는 스타일입니다.
   					</details>
  					<hr>
				</td>
			</tr>
			<tr>
				<td>강아지를 잃어버려서 실종신고를 했다가 찾았는데, 그 장소는 어디일까?</td>
			</tr>
			<tr>
				<td><div id="div_question_04"></div></td>
			</tr>
			<tr>
				<td><h3>원하는 첫키스 장소</h3></td>
			</tr>
			<tr>
				<td>
					<details>
    					<summary>1. 집안</summary>
   						집 안을 선택한 당신은 위험하지 않는 안전한 '집'에서 하고 싶어하는 군요.
   					</details>
   					<details>
   						<summary>2. 이웃집</summary>
   						이웃집을 선택한 당신은 '여행지'처럼 색다른 곳에서 하고 싶어하는 군요.
   					</details>
   					<details>
   						<summary>3. 놀이터</summary>
   						놀이터를 선택한 당신은 다소 공개적인 '호프집, 비디오방, 노래방'과 같은 곳에서 하고 싶어하는 군요.
   					</details>
   					<details>
   						<summary>4. 큰길가</summary>
   						큰길가를 선택한 당신은 은밀한 '호텔, 모텔'같은 곳에서 하고 싶어하는 군요.
   					</details>
  					<hr>
				</td>
			</tr>
			<tr>
				<td>당신은 지금 엘레베이터 앞에 있습니다. 엘레베이터를 기다리는 당신의 모습은 어떤가요?</td>
			</tr>
			<tr>
				<td><div id="div_question_05"></div></td>
			</tr>
			<tr>
				<td><h3>성격 테스트</h3></td>
			</tr>
			<tr>
				<td>
					<details>
    					<summary>1. 발을 동동 구르고 있다</summary>
   						다소 예민하고 신경질적이며, 예술저긍로 소질이 있어 특기가 생깁니다.
   					</details>
   					<details>
   						<summary>2. 계속 엘리베이터 버튼을 누르고 있다</summary>
   						생각을 오래하기 보다는 몸을 먼저 움직이는 행동력이 강한 사람입니다.<br>어떤 하나의 일에 집중하게 되면 다른 것들은 눈에 잘 안들어와서 한가지 일을 제외하고 다른 것들은 소홀히하는 경우가 있습니다.<br>다만, 행동적이고 재치가 있어 사람들에게 인기가 좋습니다.
   					</details>
   					<details>
   						<summary>3. 주변을 둘러보거나 안내판 등을 보고 있다</summary>
   						마음이 따뜻하며 온화하고 인기가 많습니다.<br>하지만 자신의 결점에 대해 알려지는 것을 꺼려해 사람들과 벽을 쌓는 경우가 있습니다.<br>이로인해 사람들은 이 사람을 냉정하다고 오해하기도 합니다.<br>인맥은 넓지 않으나 한명이라도 깊게 관계를 맺어하는 성향으로 이공계쪽에 잘 어울립니다.
   					</details>
   					<details>
   						<summary>4. 그냥 바닥을 쳐다보고 있다</summary>
   						다소 소극적이기 하지만 상당히 솔직함을 가지고 있습니다.<br>타인을 믿는다거나 좋아하게 되는데에 있어 거부감을 느끼지 않기 때문에 대인관계가 넓고 다툼이 적습니다.
   					</details>
   					<details>
   						<summary>5. 엘리베이터 LED화면을 계속 보면서 '문 열리자마자 타야지' 생각하고 있다</summary>
   						안정적인 것을 좋아해 큰 리스크를 안고 무리하게 진행하지 않습니다.<br>어떤 인간관계에 있어 문제가 있어도 합리적으로 어긋난 것을 하지 않는 편입니다.<br>감정적으로 해결하기보다는 이성적으로, 논리적으로 행동하기 때문에 사람들이 많이 따르는 편입니다.
   					</details>
				</td>
			</tr>
		</table>
	</div>
	<script>
	var options = {
		'dataset':{
			title: '눈 앞에 여러가지 물건이 있을 때, 제일 먼저 잡고 싶은 물건',
			values: [<%=question_01[0]%>,<%=question_01[1]%>,<%=question_01[2]%>,<%=question_01[3]%>,<%=question_01[4]%>],
			colorset: ['#2EB400', '#2BC8C9', "#666666", '#f09a93', '#D1B2FF'],
			fields: ['과일', '떡',  '수정구슬', '현찰', '반지'],
		},
		'donut_width' : 85,
		'core_circle_radius':0,
		'chartDiv': 'div_question_01',
		'chartType': 'pie',
		'chartSize': {width:700, height:200}
	};
	var options2 = {
		'dataset':{
			title: '손가락 하나만 편다면 무엇?',
			values: [<%=question_02[0]%>,<%=question_02[1]%>,<%=question_02[2]%>,<%=question_02[3]%>,<%=question_02[4]%>],
			colorset: ['#2EB400', '#2BC8C9', "#666666", '#f09a93', '#D1B2FF'],
			fields: ['엄지', '검지',  '중지', '약지', '소지'],
		},
		'donut_width' : 85,
		'core_circle_radius':0,
		'chartDiv': 'div_question_02',
		'chartType': 'pie',
		'chartSize': {width:700, height:200}
	};
	var options3 = {
		'dataset':{
			title: '붕어빵을 어느 부위부터 먹는가?',
			values: [<%=question_03[0]%>,<%=question_03[1]%>,<%=question_03[2]%>,<%=question_03[3]%>],
			colorset: ['#2EB400', '#2BC8C9', "#666666", '#f09a93'],
			fields: ['머리', '지느러미',  '배', '꼬리'],
		},
		'donut_width' : 85,
		'core_circle_radius':0,
		'chartDiv': 'div_question_03',
		'chartType': 'pie',
		'chartSize': {width:700, height:200}
	};
	var options4 = {
		'dataset':{
			title: '강아지를 찾은 장소는 어디인가?',
			values: [<%=question_04[0]%>,<%=question_04[1]%>,<%=question_04[2]%>,<%=question_04[3]%>],
			colorset: ['#2EB400', '#2BC8C9', "#666666", '#f09a93'],
			fields: ['집안', '이웃집',  '놀이터', '큰길가'],
		},
		'donut_width' : 85,
		'core_circle_radius':0,
		'chartDiv': 'div_question_04',
		'chartType': 'pie',
		'chartSize': {width:700, height:200}
	};
	var options5 = {
			'dataset':{
				title: '손가락 하나만 편다면 무엇?',
				values: [<%=question_05[0]%>,<%=question_05[1]%>,<%=question_05[2]%>,<%=question_05[3]%>,<%=question_05[4]%>],
				colorset: ['#2EB400', '#2BC8C9', "#666666", '#f09a93', '#D1B2FF'],
				fields: ['1', '2',  '3', '4', '5'],
			},
			'donut_width' : 85,
			'core_circle_radius':0,
			'chartDiv': 'div_question_05',
			'chartType': 'pie',
			'chartSize': {width:700, height:200}
		};
		
	Nwagon.chart(options);
	Nwagon.chart(options2);
	Nwagon.chart(options3);
	Nwagon.chart(options4);
	Nwagon.chart(options5);
</script>
</body>
</html>