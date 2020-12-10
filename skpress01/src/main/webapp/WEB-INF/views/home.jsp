<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" 
  		rel ="stylesheet"/>
  		
<title>서경대신문</title>
<style type="text/css">    
  
    body {  
      margin: 0;
      font-family: 'Source Sans Pro';
      background-color: #ffffff; 
    }  
    
    a {
      text-decoration: none;
      color: white;
    }
    
    #main3 {
      width: 90px;
      height: 30px;
    }
     #main2 {
      width: 200px;
      height: 100px;
    } 
    #main1 {
      width: 100px;
      height: 70px;
    } 
    #main {
      width: 500px;
      height: 100px;
    }
    
    .navbar {
      display: flex;
      justify-content: space-between;
      aligen-items: center;
      background-color: #333;
      padding: 8px 12px;
    }
    
    .navbar1 {
      display: flex;
      justify-content: space-between;
      aligen-items: center;
      background-color: white;
      padding: 8px 12px;
    }
    
    .navbar2 {
      display: flex;
      justify-content: space-between;
      aligen-items: center;
      background-color: #d8d8d8;
      padding: 8px 12px;
    }
    
    .navbar_menu {
      display: flex;
       aligen-items: center;
      list-style: none;
      padding-left: 0;
    }    
    
    .navbar_menu1 {
      display: flex;
      list-style: none;
      padding-left: 0;
    }
    
    .navbar_menu li {
      padding: 8px 12px;
      float: right;
    }
    
    .navbar_menu li:hover {
	  background-color: #ffffff;
	  border-radius: 4px;
    }
    
    .navbar_menu1 li {
      padding: 8px 12px;
      float: right;
    }
    
    .navbar_menu1 li:hover {
	  background-color: #ffffff;
      border-radius: 4px;
    }
    
	.navbar_menu ul {
      display: flex;
      padding-left: 0;
 	}
	
	.navbar_menu1 ul {
      display: flex;
      padding-left: 0;
 	}

    .navbar_memu1 a {
      color: black;
      font-weight: bolder;
    }
    
    .navbar_icons {
      list-style: none;
      color: white;
      display:flex;
    }       
  
  	.navbar_icons li {
  	  padding: 8px 12px
  	}
  	
  	.navbar_icons li:hover {
	  background-color: #ffffff;
      border-radius: 4px;
    }
    
div.gallery {
  border: 1px solid #ccc;
}

div.gallery:hover {
  border: 1px solid #777;
}


* {
  box-sizing: border-box;
}
.responsiv {
      display: inline;
      justify-content: space-between;
      aligen-items: center;
      height: 99.99999%;
}
.responsive1 {
  padding: 0 6px;
  float: left;
  width: 99.99999%;
  height: 48.99999%;
}

.responsive {
  padding: 0 6px;
  float: left;
  width: 99.99999%;
  height: 48.99999%;
  
}
.responsive3 {
  padding: 0 6px;
  float: left;
  width: 99.99999%;
  height: 48.99999%;
  
}
.responsive4 {
  padding: 0 6px;
  float: left;
  width: 99.99999%;
  height: 48.99999%;
  
}
.responsive5 {
  padding: 0 6px;
  float: left;
  width: 99.99999%;
  height: 48.99999%;
  
}
.responsive6 {
  padding: 0 6px;
  float: left;
  width: 99.99999%;
  height: 48.99999%;
  
}
.responsive2 {
  padding: 0 6px;
  float: left;
  width: 99.99999%;
  height: 30.99999%;
}


@media only screen and (max-width: 700px) {
  .responsive {
    width: 110.99999%;
    margin: 200px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 200%;
  }
}


.clearfix:after {
  content: "";
  display: table;
  clear: both;
}
</style>
</head>

<body> 
  <nav class="navbar1">
  
    <img id="main1" src="resources/logo1.gif" class="" alt=" 사진 ">
    <img id="main" src="resources/logo.gif" class="" alt=" 사진 ">
    <img id="main2" src="resources/logo2.gif" class="" alt=" 사진 ">
  
  </nav>
  <h1> </h1>

  <nav class="navbar"> 
    <ul class="navbar_menu">   
      
        <li><a href="/board/list?type=T&keyword=보도&pageNum=1&amount=10">보도</a></li>
        <li><a href="/board/list?type=T&keyword=여론&pageNum=1&amount=10">여론</a></li>
        <li><a href="/board/list?type=T&keyword=기획&pageNum=1&amount=10">대학</a></li>
        <li><a href="/board/list?type=T&keyword=르포&pageNum=1&amount=10">르포</a></li>
        <li><a href="/board/list?type=T&keyword=오피니언&pageNum=1&amount=10">오피니언</a></li>
        <li><a href="/board/list?type=T&keyword=문화&pageNum=1&amount=10">문화</a></li>
        <li><a href="/board/list">전체기사보기</a></li>
    </ul>

    <ul class="navbar_icons">    
        <li><a href="/customLogout"><span class="glyphicon glyphicon-user"></span> 로그아웃</a></li>
        <li><a href="/customLogin"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
    </ul>
  </nav>
  
<nav class="navbar2">
  <ul class="navbar_menu1">  			
     <li><a href="https://www.facebook.com/skpress01"><img id="main3" src="resources/facebook.png"></a></li>
     <li><a href="https://www.skuniv.ac.kr/today">서경TODAY</a></li>
     <li><a href="https://portal.skuniv.ac.kr/">포탈</a></li>
     <li><a href="https://www.skuniv.ac.kr/academic_calendar">학사일정</a></li>
     <li><a href="https://www.skuniv.ac.kr/notice">공지사항</a></li>
  </ul> 
</nav>
 
<form id="searchForm" action="/board/list" method="get">
		<select name="type">
			<option value="">검색어 입력</option>
			<option value="T">제목</option>
			<option value="C">내용</option>
			<option value="W">작성자</option>
			<option value="TC">제목과 내용</option>
		</select> <input type="text" name="keyword"
			value="${pageMaker.cri.keyword}" /> <input type="hidden"
			name="pageNum" value="${pageMaker.cri.pageNum}"> <input
			type="hidden" name="amount" value="10">
		<button class="btn btn-primary btn-sm">검색</button>
	</form>
<hr class="sidebar-divider">
				
 <h1> </h1>
<div class="responsiv">
<div class="responsive1">
  <div class="gallery"> 
 	<div class="form-group">
   		<label> 보도</label>   		
   		<input class="form-control" value="${board.title }서경대학교 미용예술대학 외국인 학생팀, ‘한-아세안 K뷰티 페스티벌’에 정부 초청으로 참가해 K뷰티의 진정한 아름다움 알리고 서경대 위상 높여" name="title" readonly>
   	</div>
   	<div class="form-group">
		<label></label>
		<textarea class="form-control" rows="10" name="content" readonly>${board.content }서경대학교 미용예술대학 외국인 학생팀이 지난 11월 25일,
26일 양일간 부산 BEXCO에서 개최된‘한·아세안 특별정상회의’기간 중 부대행사로 열린 ‘한·아세안 K뷰티 페스티벌
(ASEAN-ROK K-Beauty Festival)’에정부초청으로참가해 K뷰티의 진정한 아름다움을 알렸다.
‘아세안의 아름다움, 함께 이루는 꿈(ASEAN Beauty, Makeup Our Dreams)’는 주제로 열린이번‘한·아세안 K뷰티 페스
티벌’은 보건복지부, 중소벤처기업부등관련부처와정부유관기관, 다수의 뷰티 기업들이 참여했다. 서경대학교 미용예술대학에
서는 이지안 교수와 아세안 국적의 베트남학우31명, 말레이시아 학우 7명 등 총 39명의 외국인 학생들이 참가했다.
K뷰티 페스티벌에 참가한 유학생 학우들의 일부는 외국인 유학생 대표로서 문재인 대통령의 영부인 김정숙 여사와 아세안 정
상의 영부인들에게 K뷰티 전시 및 체험이 이루어지는 부스를 함께 이동하며 전시된 부스에 대해 설명하는 역할을 맡아 활동했다.
다른 학우들도 행사장에서 K뷰티 전시부스를 운영하고 K뷰티시연 및 체험 프로그램을 진행하는 등 한국의 미를 알리는 데 앞
장섰다. 또한 K뷰티 페스티벌의하이라이트인‘드림 스테이지’ 에서는 모델 장윤주의 사회로 서경대학교 미용예술대학의 응우
웬 티 타잉 흐엉 학우의 인터뷰가진행되었다. 서경대학교 미용예술대학 외국인학생팀의 이지안 주임교수
는“이번 행사는 국가적 차원에서 진행하는 대규모 국제행사인 만큼 한 달반 전부터 주최 측으로부터 사전요청을 받아 여러 가
지 서류를 제출하고 다양한 콘텐츠와 프로그램을 준비해 행사에 참여했다”며“외국인 학생팀 소속의 모든 교수님들의 사랑과 열
정 어린 유학생 지도 덕분에 한국을 넘어 아세아 지역까지 우리 서경대학교 미용예술대학의 이름과 존재를 알리고 위상을 높이
는 기회를 갖게 돼 매우 기쁘고감사하게 생각한다.”고 소회를밝혔다.</textarea>
	</div>	
	  <form id='operForm' action="/board/get" method="get">
		<input type="hidden" id="bno" name="bno" value="170">
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="amount" value="10"> 
		<button data-oper="list" class="btn btn-primary btn-sm">자세히보기</button>		
	    </form>
  </div>
</div>


<div class="responsive5">
  <div class="gallery">
 	<div class="form-group">
   		<label>여론</label>
   		<input class="form-control" value="${board.title }‘노튜버존’에 대해 어떻게 생각하십니까?" name="title" readonly>
   n	</div>
   	<div class="form-group">
		<label></label>
		<textarea class="form-control" rows="10" name="content" readonly>${board.content }지난 4월 어플리케이션 분석업체 와이즈맵에서 한국인이 가장 많이 사용하는 어플리케
이션의 순위를 발표하였다. 월 누적시간 225억 분의 카카오톡을 제치고 1위를 차지한 어
플리케이션은 388억 분의 누적시간을 기록한 유튜브였다. 한국인에게 가장 사랑받는 어플
리케이션으로 등극한 유튜브는 이미 전 연령층에서 대세로 인정받고 있다. 이처럼 유튜브
가 많은 인기를 받는 만큼 유튜브 영상 제작에 직접 참여하는 유튜버들 또한 늘어나고 있
다. 초등학생들의 장래희망으로 유튜버가 많은 각광을 받고 있다는 뉴스는 이미 오래전 일
이다. 이와 같은 배경 속에서 실제 1인 방송을 하며 자신만의 독창적인 콘텐츠를 보여주는
유튜버들이 많아지고 있다. 그중에서도 많은 대중에게 쉽게 인기를 끄는 먹방 콘텐츠는 유
튜버들이 쉽게 제작할 수 있어 특히나 많이 생산되고 있다.</textarea>
	</div>	
	<form id='operForm' action="/board/get" method="get">
		<input type="hidden" id="bno" name="bno" value="247">
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="amount" value="10"> 
		<button data-oper="list" class="btn btn-primary btn-sm">자세히보기</button>		
	</form>        
  </div>
</div>


<div class="responsive6">
  <div class="gallery">
 	<div class="form-group">
   		<label>대학</label>
   		<input class="form-control" value="${board.title }서경대학교 만족해요 바라요" name="title" readonly>
   	</div>
   	<div class="form-group">
		<label></label>
		<textarea class="form-control" rows="10" name="content" readonly>${board.content }‘실용이 최고의 가치다’라는 슬로건을 내세우
는 서경대학교가 개교 72주년을 맞았다. 2019년
서경대는 대학로에‘서경대 공연예술센터’를 개
관하고, 4년제 대학 정시 모집 경쟁률에서 서울
지역 1위를 차지하는 등 겹경사를 맞았다. 서경
대는 전국으로 범위를 넓혀도 2019 정시 모집
경쟁률에서 전체 5위를 차지했다. 서경대가 명실
상부한 실용교육대학으로 거듭났다는 증거다.
서경대학교는 지난 70여 년 동안 수많은 학우
들과 교직원들의 노력 속에서 지금과 같은 위치
까지 도달할 수 있었다. </textarea>
	</div>	
	<form id='operForm' action="/board/get" method="get">
		<input type="hidden" id="bno" name="bno" value="251">
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="amount" value="10"> 
		<button data-oper="list" class="btn btn-primary btn-sm">자세히보기</button>		
	</form>        
  </div>
</div>

<div class="responsive3">
  <div class="gallery">
 	<div class="form-group">
   		<label>르포</label>
   		<input class="form-control" value="${board.title }청년시민을 위한 공간,
무중력지대 성북" name="title" readonly>
   	</div>
   	<div class="form-group">
		<label></label>
		<textarea class="form-control" rows="10" name="content" readonly>${board.content }동아리, 스터디, 과제 등 청년들의 다양한 활동이
많아지는 가운데 정작 이를 위한 공간은 존재하지
않는다. ‘서울시에서는 청년들의 공간을 스타벅스
가 책임진다.’라는 우스갯소리가 나올 정도이다. 또
한 청년들은 사회가 정해놓은 학업, 취업, 연애문제
등의 틀 안에서 스트레스를 받는다. 이에 청년들은
자신을 구속하고 옥죄는 것에서 벗어나 자유롭게
활동할 수 있는 공간이 필요하다고 목소리를 꾸준
히 내왔다. 이에 청년들을 위한 공간 무중력지대가
생기기 시작했다.
</textarea>
	</div>	
	<form id='operForm' action="/board/get" method="get">
		<input type="hidden" id="bno" name="bno" value="250">
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="amount" value="10"> 
		<button data-oper="list" class="btn btn-primary btn-sm">자세히보기</button>		
	</form>        
  </div>
</div>


<div class="responsive4">
  <div class="gallery">
 	<div class="form-group">
   		<label>오피니언</label>
   		<input class="form-control" value="${board.title }생각할 자유의 오류" name="title" readonly>
   	</div>
   	<div class="form-group">
		<label></label>
		<textarea class="form-control" rows="10" name="content" readonly>${board.content }‘취존’이라는말을들어봤는가 ‘취존’이란개인의취향을존중해
달라는 뜻의 줄임말이다. ‘취존’이라는 단어 하나면 분분한 주제에 대
해 이야기를 할 때 마법처럼 논란을 한순간에 잠재울 수 있다. 또한 미
리‘취존’을해달라고못을박아상대가 나에게 시비를 걸 수조차 없도
록 방어도 가능하다. 다양성 포용이시대정신이자 미덕인 21세기에 이
‘취존’이라는단어는모든이들의생각을정당화하는말이되었다.
어느새 사람들은 좋아하는 것 뿐만 아니라 불호에 대해서도 이해받
기를 원하고 싫어할 자유를 외치기시작했다. 이어 딴지를 걸며 문제를
제기하는 이들에게 피곤함과 불편함을 느끼게 되었다. 이에 모든 일
에 트집을 잡고 예민하게 군다며‘프로불편러’라고비꼬는신조어도
등장하게 되었다. </textarea>
	</div>	
	<form id='operForm' action="/board/get" method="get">
		<input type="hidden" id="bno" name="bno" value="248">
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="amount" value="10"> 
		<button data-oper="list" class="btn btn-primary btn-sm">자세히보기</button>		
	</form>        
  </div>
</div>


<div class="responsive2">
  <div class="gallery">
 	<div class="form-group">
   		<label>문화</label>
   		<input class="form-control" value="${board.title }내 이름은 빨강머리 앤" name="title" readonly>
   	</div>
   	<div class="form-group">
		<label></label>
		<textarea class="form-control" rows="10" name="content" readonly>${board.content }이번 <내 이름은 빨강머리 앤>은 소설 <빨
강머리 앤>을 현대적으로 재해석한 전시회이다. 우리 각자의 마음속에 추억으로 남아 있는 앤을 회화, 애니메이션, 대형 설치 작품, 음악 및 영상 등을 통해 새롭게 만나볼 수 있
다. 이번 전시회는 스토리 형식으로 전개되어더욱몰입감을준다.
앤이 자기자신을‘ANN’이 아닌‘ANNE’ 이라고 불러 달라는 프롤로그 장면과 함께 전시회가 시작된다. 이처럼 자신이 어떻게 불릴 지를 스스로 선택하는 장면으로부터 앤
이 개성과 주체성을 선명하게 드러내는 것을 볼 수 있다. 프롤로그를 지나면 고아였던 앤의 어린 시절을 볼 수 있다. 앤은 떠돌이 생활을 하며 강
도 높은 노동도 했다. 이 부분에서는 그 당시 캐나다의 매우 낮은 아동 인권수준에대하여알수있다.
소설 속 에이번리 마을의 배경이 된 프린스 에드워드섬의 캐번디시 국립공원은 아직도 관광 명소로 명성이 높다. 해당 챕터에서는 온갖 자연
물에 이름을 붙이는 순수한 앤을 볼 수 있다. 그 모습은 보는 사람들로 하여금 미소를 머금게 한다. 그러나 사랑스러운 분위기도 잠시, 다음 챕터
에서는 외모 콤플렉스에 괴로워하는 앤의 이야기가 나온다. 주근깨와 빨간 머리라는 외모 콤플렉스를 가진 앤은 자신의 이러한 점들을 부정한
다. 그러나 이 챕터의 마지막에서는 자신을 있는 그대로 받아들이는 모습을보여주며관람객들에게용기를준다.
마지막으로‘길 모퉁이’라는 챕터에서는 앤이 대학에 진학하지 않고집으로 돌아와 에이번리에서 교사가 되었다는 결말이 펼쳐진다. 주변 사
람들은 만류하지만 앤은 단지 꿈의 방향만 바뀐 것뿐이라며 모든 기회에 겁을내지말라는교훈을던지며전시회는끝이난다. </textarea>
	</div>	
	<form id='operForm' action="/board/get" method="get">
		<input type="hidden" id="bno" name="bno" value="249">
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="amount" value="10"> 
		<button data-oper="list" class="btn btn-primary btn-sm">자세히보기</button>		
	</form>        
  </div>
</div>
</div>

 
      
</body>

<script>
	$(function() {
		var result = '<c:out value="${result}" />';
		checkModal(result);
		history.replaceState({}, null, null);

		function checkModal(result) {
			if (result === '' || history.state) {
				return;
			}
			
			$("#myModal").modal("show");
		}

		$("#regBtn").on("click", function() {
			self.location = "/board/register";
		});

		var actionForm = $("#actionForm");

		$(".page-item a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});


		var searchForm = $("#searchForm");

		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				return false;
			}

			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}

			searchForm.find("input[name='pageNum']").val("1");

			e.preventDefault();

			searchForm.submit();

		});
	});
</script>
</html>

