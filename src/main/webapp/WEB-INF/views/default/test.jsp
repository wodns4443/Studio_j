<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script> 
    <style>
    
    
    #popupDiv {  /* 팝업창 css */
    top : 0px;
    position: absolute;
    background: blue;
    width: 500px;
    height: 500px;
    display: none; 
    }
    
    #popup_mask { /* 팝업 배경 css */
        position: fixed;
        width: 100%;
        height: 1000px;
        top: 0px;
        left: 0px;
         display: none; 
         background-color:#000;
         opacity: 0.8;
    }
    
    </style>

</head>
<body>
    
 
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<button id="popOpenBtn">Popup Open</button> 
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 	<h1>Test</h1>
 
 
    <div id ="popup_mask" ></div> <!-- 팝업 배경 DIV -->
    
    <div id="popupDiv"> <!-- 팝업창 -->
    	<p>머여씨발</p>
        <button id="popCloseBtn">close</button>
    </div>
        
    </div>
    
    <script>
    var popipDIV = "popupDiv"
    
    $(document).ready(function(){
        $("#popOpenBtn").click(function(event){  //팝업 Open 버튼 클릭 시 
 			
             $("#"+popipDIV).css({
                "top": (($(window).height()-$("#popupDiv").outerHeight())/2+$(window).scrollTop())+"px",
                "left": (($(window).width()-$("#popupDiv").outerWidth())/2+$(window).scrollLeft())+"px"
                //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
             
             }); 
            
            $("#popup_mask").css("display","block"); //팝업 뒷배경 display block
            $("#popupDiv").css("display","block"); //팝업창 display block
            
            $("body").css("overflow","hidden");//body 스크롤바 없애기
        });
        
        $("#popCloseBtn").click(function(event){
            $("#popup_mask").css("display","none"); //팝업창 뒷배경 display none
            $("#popupDiv").css("display","none"); //팝업창 display none
            $("body").css("overflow","auto");//body 스크롤바 생성
        });
     
    
    });
 
 
    </script>
</body>
</html>