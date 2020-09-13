<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<%@ include file = "/WEB-INF/views/inc/asset.jsp" %>
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- 위에 놈이 글리피콘을 불러오는 역할을 수행한다. -->
    <link rel="stylesheet" href="icofont/icofont.min.css">
    <title>Document</title>
</head>

<style>
    body {
        background-color : #101010;
        border : 1px solid #101010;
        /* border : 1px solid red; */
        height : 7000px;
        margin:0px;
    }

    /* 공통양식 -> 표처럼 생긴 양식 */
    .interest {
        /* border: 2px solid #212121; */
        height : 250px; 
        width: 1004px;
		margin: 0px auto;
		color: #444;
        border-collapse: collapse;
    }
    .interest td {
        border: 2px solid #212121;
        width : 334px;
        border-bottom : 0px;
    }
    
    .interestTitle {
        /* border: 1px solid red; */
        font-size: 30px;
        font-weight: bold;
        color : #FFFFFF;
        width : 120px;
        margin-left : 40px;
        margin-top : 160px;
    }

    .interestContent {
        /* border: 1px solid yellow; */
        border-top: 0px;
        height : 250px; 
        width: 1004px;
        margin: 0px auto;
        border-collapse: collapse;
        border-bottom: 0px;
    }

    .interestContent td {
        border: 2px solid #212121;
        border-bottom: 0px;
    }
    .bigInter {
        width : 470px;
    }
    .inter1 {
        /* border: 1px solid red; */
        color : #48F19C;
        font-size: 3em;
        text-align: center;
    }
    .inter1cont {
        /* border: 1px solid red; */
        color : #fff;
        font-size: 1.5em;
        text-align: center;
    }
    .inter1contdetail {
        /* border: 1px solid red; */
        font-size: 16px;
        color: #BBBBBB;
        text-align: center;
    }

    /* 나의 skill  */
    .ineerimg {
            /* border: 1px solid red; */
            height : 150px;
            width : 150px;
            margin : 0px auto;
            margin-bottom: 10px;
            background-repeat: no-repeat;
            background-size: cover;
    }


    
</style>


<body>
    
    <!---------------------페이지 상단  시작-------------------------->
    <div id = "topTitle">
        <nav id="title" class = "topcontent">
            <span data-item="item1">Software Developer</span>
        </nav>
        <nav id="menu" class = "topcontent">
            <span id="item1" class = "topbtn" style = "color : white;">Home</span>
			<span id="item2" class = "topbtn">About</span>
			<span id="item3" class = "topbtn">Skill</span>
			<span id="item4" class = "topbtn">Portfolio</span>
			<span id="item5" class = "topbtn">Contact</span>
        </nav>
    </div>
    
    <style>
        #topTitle {
            /* border: 1px solid white; */
            height : 100px;
            width : 100%;
            position: fixed;
            background-color: #101010;
            z-index: 10;
        }
        #title {
            /* border: 1px solid red; */
            color : white;
            width : 500px;
            font-size: 1.2em;
            float : left;
            margin-left : 20px;
            font-variant: small-caps;
        }
        #menu > span {
            /* border: 1px solid grey; */
            margin-left : 30px;
        }
        #menu {
            /* border: 1px solid orange; */
            color: #A3A3A3;
            width : 520px;
            font-size: 1.2em;
            float : right;
            font-variant: initial;
        }
        .topcontent {
            margin-top : 55px;
        }
        .topbtn:hover {
            cursor:pointer;
            color : white;
        }
        
    </style>
        
    <script>
        //Home 을 눌렀을 경우에
        $("#item1").click(function(){
            
            //$(this).css("color","white");
            event.preventDefault();
			$("html,body").animate({
				scrollTop: 0
			}, 800);
        });

        //About 을 눌렀을 경우에
        $("#item2").click(function(){
            event.preventDefault();
			$("html,body").animate({
				scrollTop: 900
			}, 800);
        });
        // skill 눌렀을 경우에
        $("#item3").click(function () {

            event.preventDefault()
            $("html,body").animate({
                scrollTop: 3250
            }, 800);
        });

        // 포트폴리오 눌렀을 경우에
        $("#item4").click(function () {

            event.preventDefault()
            $("html,body").animate({
                scrollTop: 5150
            }, 800);
        });

        //contact 눌렀을 경우에
        $("#item5").click(function () {
            
            event.preventDefault()
            $("html,body").animate({
                scrollTop: 6350
            }, 800);
        });


        //마우스를 적당히 내렸을때 상단바의 메뉴색을 변경해줄것
        $(document).scroll(function () {

            $(".topbtn").css("color","#A3A3A3");

            if ($(document).scrollTop() >= 0 && $(document).scrollTop() < 900) {
                $("#item1").css("color","white");
            } else if ($(document).scrollTop() >= 900 && $(document).scrollTop() < 3250) {
                $("#item2").css("color", "white");
            } else if ($(document).scrollTop() >= 3250 && $(document).scrollTop() < 5150) {
                $("#item3").css("color", "white");
            } else if ($(document).scrollTop() >= 5150 && $(document).scrollTop() < 6350) {
                $("#item4").css("color", "white");
            } else {
                $("#item5").css("color", "white");
            }

        });
        
    </script>
    <!---------------------페이지 상단 끝-------------------------->
    


    <!-------------------- 마우스 원 시작 -------------------->
    <!-- <div id="result" style="position: absolute; background: green; width: 30px; height: 30px; opacity: 0.4; border-radius: 100%;"> 
    </div> -->


    <!-------------------- 마우스 원 끝 -------------------->




    <!---------------------페이지 상단 사진 시작-------------------------->
    <div id = "topPic">
       <div id = "topPicWriter">
           <span id = "topPicWriter2"></span>
       </div>
    </div>

    <style>
        #topPic {
            /* border: 1px solid orange; */
            width : 100%;
            height : 1000px;
            background-image: url(./images/background.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position-y: 10%;
            background-color:#101010; 
        }
        #topPicWriter {
            /* border: 1px solid red; */
            position: relative;
            width: 1525px;
            height: 200px;
            top : 40%;
            left : 10%;
            text-align: center;
        }
        #topPicWriter span {
            color : white;
            font-size: 6em;
            font-family: fantasy;
            
        }

    </style>

    <script>
        
        var topPicWriter2Text = "";
        var cycle = 0;
        var num = 0;
        var textList = ["I"," ","c","o","d","e"," ","c","o","o","l"," ","w","e","b","s","i","t","e","","",""];
        var textListNew = ["I", " ","L","o","v","e"," ","J","a","v","a","♥","","","","",""];
        var textListOld = ["S","t","a","y"," ","H","u","n","g","r","y",", ","S","t","a","y"," ","F","o","o","l","i","s","h","","","","", "", ""];
        var selectWord = 0;
        var texts = [textList,textListNew,textListOld];
        var selectText = "";
        $(document).ready(function(){
            timer = setInterval(function(){
                
                if (selectWord == 0) {
                    selectText = texts[0];
                } else if (selectWord == 1) {
                    selectText = texts[1];
                } else {
                    selectText = texts[2];
                }

                if (cycle % 2 == 0) {
                    if (num == selectText.length-1) {
                        topPicWriter2Text += selectText[num];
                        $("#topPicWriter2").text(topPicWriter2Text);
                        cycle++;
                    } else {
                        topPicWriter2Text += selectText[num];
                        $("#topPicWriter2").text(topPicWriter2Text);
                        num++;
                    }
                } else {
                    if (num == 0) {
                       $("#topPicWriter2").empty();
                        topPicWriter2Text = topPicWriter2Text.substr(0,(num-1));
                        $("#topPicWriter2").text(topPicWriter2Text);
                        cycle++;
                        if (selectWord == 2){
                            selectWord=0;
                        } else {
                            selectWord++;
                        }
                        
                    } else {
                        $("#topPicWriter2").empty();
                        topPicWriter2Text = topPicWriter2Text.substr(0,(num-1));
                        $("#topPicWriter2").text(topPicWriter2Text);
                        num--;
                    }
                }
            },100);
        });
        

    </script>
    <!---------------------페이지 상단 사진 끝-------------------------->

    

    <!--------------------------About 시작------------------------------->
    
    
    <div id = "resume">
        <div id = "resumePic"></div>
        <div id = "resumeText">
            <span>안녕하세요 제 이름은 신승환입니다. 
                <br>
                "백견이 불여일타 (百見而不如一打), 백예제 불여일업무(sample code &lt; service code)"
                <br>
                유연한 사고와 수학적능력을 기반으로한 프로그래밍에 자신이 있습니다.
                <br>
            </span>
        </div>
        
        <table id = "resumeInfo">
            <tr>
                <td><strong class = "titleInfoText">Name:</strong> Seung Hwan Shin</td>
                <td><strong class = "titleInfoText">Date of Birth:</strong> 1993-08-23</td>
            </tr>
            <tr>
                <td><strong class="titleInfoText">Age:</strong> 28</td>
                <td><strong class="titleInfoText">Residence:</strong> Republic Of Korea</td>
            </tr>
            <tr>
                <td><strong class = "titleInfoText">Phone:</strong> 010-5139-3792</td>
                <td><strong class = "titleInfoText">E-mail:</strong> ssh9308@naver.com</td>
            </tr>
            <tr>
                <td><strong class = "titleInfoText">Availability date:</strong> Immediately</td>
                <td><strong class = "titleInfoText">Address:</strong> Seoul Songpa</td>
            </tr>
        </table>
        
        <!-- Availability date : Immediately -->

        <button id = "resumeGit">
            connect to git
        </button>
    </div>
    <style>
        #resume {
            border: 2px solid #212121;
            border-bottom: 0px;
            height : 350px; 
            width: 1004px;
			margin: 30px auto;
			color: #444;
            margin-bottom: 0px;
        }
        #resumePic {
            /* border: 1px solid red; */
            margin : 30px;
            width : 150px;
            height : 200px;
            background-image: url(./images/ssh.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            float: left;
        }
        #resumeText {
            /* border: 1px solid red; */
            width : 700px;
            height : 100px;
            float: left;
            margin-top: 30px;
            color : #BBBBBB;
        }
        #resumeInfo {
            /* border: 1px solid red; */
            float: left;
            width : 702px;
            height : 100px;
            border-collapse: collapse;
        }
        #resumeInfo td {
            /* border: 1px solid yellow; */
            border-collapse: collapse;
            width : 351px;
            padding-left : 10px;
            color : #BBBBBB;
        }
        .titleInfoText {
            color : #48F19C;
        }
        #resumeGit {
            border : 1px solid  #48F19C;
            background-color: #101010;
            color : #48F19C;
            font-size: 1.2em;
            width : 150px;
            height: 40px;
            margin-top : 20px;
            transition: all 1s;
            outline: none;
        }
        #resumeGit:hover {
            cursor:pointer;
            color : black;
            background-color: #48F19C;
        }

    </style>
    <script>
        //https://github.com/sexyseunghwan?tab=repositories
        $("#resumeGit").click(function(){
            window.open("https://github.com/sexyseunghwan","github");
        });
    </script>
    <!-- ----------------------------education & experience------------------------------- -->
    <table class="interest">
        <tr>
            <td>
                <div class="interestTitle">Education</div>
            </td>
            <td></td>
            <td>
                <div class="interestTitle" style = "margin-left : 130px;">Experience</div>
            </td>
        </tr>
    </table>

    <table class="interestContent" style="height : 200px;">
        <tr>
            <td class = "smallInter">
                <div class = "period">2020 - Present</div>
                <div class = "contentTitle">SIST - 쌍용교육센터</div>
                <div class = "contentText">쌍용교육센터에서 웹개발자가 되기위한 교육을<br>이수중에 있습니다.</div>
            </td>
            <td></td>
            <td class = "smallInter">
                <div class="period">2019 - 2020</div>
                <div class="contentTitle">산학협력단 DSML CENTER</div>
                <div class="contentText">딥러닝 연구보조를 맡았습니다.<br>anaconda,matplot,numpy 등을 사용.</div>
            </td>
        </tr>
    </table>
    
    

    <table class="interestContent" style="height : 100px;">
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    
    <table class="interestContent" style="height : 200px;">
        <tr>
            <td class = "smallInter">
                <div class="period">2013 - 2019</div>
                <div class="contentTitle">ㅇㅇ대학교 - 수학과</div>
                <div class="contentText">수학과에 진학하여 컴퓨터사이언스의 근본인<br>수학을 열심히 배웠습니다.</div>
            </td>
            <td></td>
            <td class = "smallInter">
                <div class="period">2017 - 2018</div>
                <div class="contentTitle">교내 DATA-SCIENCE 장학생</div>
                <div class="contentText">교내 DATA-SCIENCE 장학생 으로 선발되어<br> 데이터사이언스 분야에 대해 연구할 기회를<br> 가졌습니다.</div>
            </td>
        </tr>
    </table>

    <table class="interestContent" style="height : 100px;">
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>

    <table class="interestContent" style="height : 200px;">
        <tr>
            <td class="smallInter">
                <div class="period">2009 - 2012</div>
                <div class="contentTitle">ㅇㅇ고등학교</div>
                <div class="contentText">배명고등학교 에서 인문계로 진학했습니다.</div>
            </td>
            <td></td>
            <td class="smallInter">
                <div class="period">2016 - 2018</div>
                <div class="contentTitle">한중교류회</div>
                <div class="contentText">한중교류회(한국학생과 중국학생 간의 교류)<br> 임원으로 활동하며,<br>의사소통 능력을 키웠습니다.

                </div>
            </td>
        </tr>
    </table>

    <style>
        .smallInter {
            width : 400px;
        }
        /* 활동기간 */
        .period {
            /* border: 1px solid red; */
            width : 200px;
            height : 20px;
            margin-left : 50px;
            margin-bottom : 10px;
            padding:0px;
            /* font-size: 0.8em; */
            font-weight: bold;
            color : #48F19C;
        }
        /* 활동 타이틀 */
        .contentTitle {
            /* border: 1px solid blue; */
            width : 300px;
            height : 30px;
            margin-left : 50px;
            margin-bottom : 20px;
            padding:0px;
            font-weight: bold;
            font-size: 1.3em;
            color : white;
        }
        /* 활동 타이틀 설명 */
        .contentText {
            /* border: 1px solid yellow; */
            width : 300px;
            margin-left : 50px;
            height : 80px;
            padding:0px;
            color : #BBBBBB;
        }
        
    </style>


    <!-- ----------------------------Strength------------------------------- -->
    <table class = "interest">
        <tr>
            <td><div class = "interestTitle">Strength</div></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    
    <table class = "interestContent">
        <tr>
            <td class = "bigInter">
                <div class = "inter1"><i class="icofont-key"></i></div>
                <div class = "inter1cont">Problem solving ability</div>
                <div class = "inter1contdetail">문제 해결 능력</div>
            </td>
            <td></td>
            <td class = "bigInter">
                <div class = "inter1"><i class="icofont-users-social"></i></div>
                <div class = "inter1cont">RelationShip</div>
                <div class = "inter1contdetail">의사소통 능력</div>
            </td>
        </tr>
    </table>
    
    
    <table class = "interestContent" style = "height : 100px;">
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>

    <table class = "interestContent">
        <tr>
            <td class = "bigInter">
                <div class = "inter1"><i class="icofont-unique-idea"></i></div>
                <div class = "inter1cont">Creative thinking</div>
                <div class = "inter1contdetail">창의적 사고</div>
            </td>
            <td></td>
            <td class = "bigInter">
                <div class = "inter1"><i class="icofont-learn"></i></div>
                <div class = "inter1cont">Willingness to learn</div>
                <div class = "inter1contdetail">배우려는 의지</div>
            </td>
        </tr>
    </table>
    
    <!--------------------------About 끝------------------------------->
    
    <!--------------------------Skill 시작------------------------------->

    <table id = "skilltbl">
        <tr>
            <th><div class = "interestTitle">Skill<div></th>
            <th></th>
            <th></th>
        </tr>
        <tr>
            <td colspan = "2">
                <div class = "skillImgs" id = "skim1"></div>
                <div class = "skillImgs" id = "skim2"></div>
                <div class = "skillImgs" id = "skim3"></div>
            </td>
            <td style = "border-right: hidden;"></td>
        </tr>
        <tr>
            <td style = "border-left: hidden;"></td>
            <td colspan = "2">
                <div class="skillImgs" id = "skim4"></div>
                <div class="skillImgs" id = "skim5"></div>
                <div class="skillImgs" id = "skim6"></div>
            </td>
        </tr>
        <tr>
            <td colspan = "2">
                <div class="skillImgs" id = "skim7"></div>
                <div class="skillImgs" id = "skim8"></div>
                <div class="skillImgs" id = "skim9"></div>
            </td>
            <td style = "border-right: hidden;"></td>
        </tr>
        <tr>
            <td style = "border-left: hidden;"></td>
            <td colspan = "2">
                <div class="skillImgs" id = "skim10"></div>
                <div class="skillImgs" id = "skim11"></div>
                <div class="skillImgs" id = "skim12"></div>
            </td>
        </tr>
    </table>


    <style>
        #skilltbl {
            border: 2px solid #212121;
            height : 250px; 
            width: 1004px;
		    margin: 0px auto;
		    color: #444;
        }
        #skilltbl td,th {
            border: 2px solid #212121;

        }
        #skilltbl th {
            font-size: 30px;
            font-weight: bold;
            color : #FFFFFF;
            width : 160px;
            height: 250px;
            margin-left : 40px;
            margin-top : 160px;
        }
        #skilltbl td {
            height: 250px;
            width : 33.3%;
        }
        /* 스킬이미지에 대하여 */
        .skillImgs {
            /* border: 1px solid red; */
            width : 180px;
            height : 180px;
            float : left;
            margin-left: 32px;
            background-repeat: no-repeat;
        }

        #skim1 {
           
            background-image: url(./images/java.png);
            background-size: cover;
        }
        #skim2 {
           
            background-image: url(./images/python.png);
            background-size: cover;
        }
        #skim3 {
           
            background-image: url(./images/clang.png);
            background-size: 80%;
            background-position: 50%;
        }
        /* webser.png */
        #skim4 {
           
            background-image: url(./images/webser.png);
            background-size: 90%;
            background-position: 50%;
        }
        #skim5 {
       
            background-image: url(./images/jquery.png);
            background-size: 60%;
            background-position: 50%;
        }
        #skim6 {
       
            background-image: url(./images/bootstrap.png);
            background-size: cover;
            background-position: 50%;
        }
        #skim7 {

            background-image: url(./images/ajax.png);
            background-size: 60%;
            background-position: 50%;
        }
        #skim8 {
            background-image: url(./images/oracle.png);
            background-size: cover;
            background-position: 50%;
        }
        #skim9 {
            background-image: url(./images/spring.png);
            background-size: cover;
            background-position: 50%;
        }
        #skim10 {
            background-image: url(./images/anaconda.png);
            background-size: 100%;
            background-position: 50%;
        }
        #skim11 {
            background-image: url(./images/numpy.png);
            background-size: 90%;
            background-position: 50%;
        }
        #skim12 {
            background-image: url(./images/matplot.png);
            background-size: 100%;
            background-position: 50%;
        }
    </style>
    


    <script>
        

    </script>

    <!--------------------------Skill 끝------------------------------->

    <!--------------------------Knowledge 시작------------------------------->
    <table class="interest" style="border-top:hidden;">
        <tr>
            <td style="width : 333px;">
                <div class="interestTitle">Knowledge</div>
            </td>
            <td></td>
            <td></td>
        </tr>
    </table>
    <div id = "knowledgeSelect">
        <div><span class = "checkIcon"><i class="icofont-check"></i></span><span class = "innerKnowCont">객체지향언어</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">C 기초문법</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">메모리 누수 관리</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">자료구조</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">탐색,정렬 알고리즘</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">웹 페이지 구조</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>
        <div><span class="checkIcon"><i class="icofont-check"></i></span><span class="innerKnowCont">asd</span></div>

    </div>




    <style>
        #knowledgeSelect {
            border: 2px solid #212121;
            width : 1004px;
            margin:0px auto;
            height : 400px;
            padding: 10px;
        }
        #knowledgeSelect > div {
            /* border: 1px solid red; */
            width : 300px;
            height: 30px;
            float: left;
            margin-left: 20px;
            margin-top : 11px;
            padding-left: 10px;
            /* padding-top: 3px; */
        }
        /* 체크표시 */
        .checkIcon {
            color: #48F19C;
            font-size: 1.6em;
        }
        /* 안에 글자 */
        .innerKnowCont {
            color : white;
        }

    </style>

    <!--------------------------Knowledge 끝------------------------------->




    <!--------------------------포트폴리오 시작------------------------------->
    <table class="interest" style = "border-top:hidden;">
        <tr>
            <td style = "width : 333px;">
                <div class="interestTitle">Portfolio</div>
            </td>
            <td></td>
            <td></td>
        </tr>
    </table>
    <!-- 포트폴리오 선택가능하게 만들것이다. -->
    <table class="interest" id = "portfoliselect">
        <tr>
            <td>
                <button class = "projectselectbtn" id = "probtn1" style = "color : #48F19C;">Web project</button>
                <button class = "projectselectbtn" id = "probtn2">Java console project</button>
                <button class = "projectselectbtn" id = "probtn3">Java & oracle project 1</button>
                <button class = "projectselectbtn" id = "probtn4">Java & oracle project 2</button>
                <button class = "projectselectbtn" id = "probtn5">Deep learning project</button>
            </td>
        </tr>
    </table>

    <table class="interestContent" style="height : 70px;">
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>

    <table class="interestContent" style="height : 800px;">
        <tr>
            <td rowspan="5" id = "ppimg1" style="width : 450px; height: 100px;">
                <!-- <div id = "ppimg1">이미지1</div> -->
            </td>
            <td style="border-top: hidden;"></td>
            <td rowspan="3" style="width : 450px;" id="ppimg2"></td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td style="border-top: hidden;"></td>
            <!-- <td></td> -->
        </tr>
        <tr>
            <!-- <td></td> -->
            <td style="border-top: hidden;"></td>
            <!-- <td></td> -->
        </tr>
        <tr>
            <!-- <td></td> -->
            <td style="border-top: hidden;"></td>
            <td style="border-left: hidden;"></td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td style="border-top: hidden;"></td>
            <td rowspan="5" id="ppimg4" style="border-bottom:2px solid #212121;">
                <!-- <div id="ppimg4">이미지4</div> -->
            </td>
        </tr>
        <tr>
            <td style="border-right: hidden;"></td>
            <td style="border-top: hidden;"></td>
            <!-- <td>9</td> -->
        </tr>
        <tr>
            <td rowspan="3" id="ppimg3" style="border-bottom:2px solid #212121;">
                <!-- <div id="ppimg3">이미지3</div> -->
            </td>
            <td style="border-top: hidden;"></td>
            <!-- <td>12</td> -->
        </tr>
        <tr>
            <!-- <td></td> -->
            <td style="border-top: hidden;"></td>
            <!-- <td>14</td> -->
        </tr>
        <tr>
            <!-- <td></td> -->
            <td style="border-top: hidden;"></td>
            <!-- <td>16</td> -->
        </tr>
    </table>



    <style>
        #portfoliselect {
            /* border-top: 1px solid red; */
            height: 70px;
        }
        /* 프로젝트 select 버튼 */
        .projectselectbtn {
            border:0px;
            background-color: transparent;
            color: #EEEEEE;
            margin-left: 43px;
            font-weight: bold;
            outline : none;
        }
        #projectimg1 {
            /* width : 500px; */
        }
        #projectimg2 {
            /* width : 400px; */
        }

        #ppimg1 {
            background-image: url(./images/webpj.png);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: 100%;
            transition: all .5s;
        }

        #ppimg2 {
            background-image: url(./images/weblogin.png);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: 100%;
            transition: all .5s;
        }

        #ppimg3 {
            background-image: url(./images/webpj.png);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: 100%;
            transition: all .5s;
        }

        #ppimg4 {
            background-image: url(./images/webseat.png);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: 100%;
            transition: all .5s;
        }
        
    </style>

    <script>
        var projectselectbtn = document.getElementsByClassName("projectselectbtn");

        // 버튼 색 바꾸게 하는 알고리즘.
        $(".projectselectbtn").click(function(){
            $(".projectselectbtn").css("color","#EEEEEE");
            $("#"+$(this).attr("id")).css("color","#48F19C");

            //아래에서 사진에 대한 적용도 해줘야 한다.
            if ($(this).attr("id") == "probtn1") {
                $("#ppimg1").css("backgroundImage","url(./images/webpj.png)");
                $("#ppimg2").css("backgroundImage", "url(./images/weblogin.png)");
                $("#ppimg3").css("backgroundImage", "url(./images/webpj.png)");
                $("#ppimg4").css("backgroundImage", "url(./images/webpj.png)");
            } else if ($(this).attr("id") == "probtn2") {
                $("#ppimg1").css("backgroundImage", "url(./images/orclpj1.png)");
            }


        });
        

    </script>


    <!--------------------------포트폴리오 끝------------------------------->


    <!--------------------------contact 시작------------------------------->

    
    <table class="interest" style="border-top:hidden;">
        <tr>
            <td style="width : 333px;">
                <div class="interestTitle">Contact</div>
            </td>
            <td></td>
            <td></td>
        </tr>
    </table>

    <table class="interestContent">
        <tr>
            <td class="bigInter">
                <div class="inter1"><i class="icofont-phone"></i></div>
                <div class="inter1cont">Phone</div>
                <div class="inter1contdetail">010 - 5139 - 3792</div>
            </td>
            <td></td>
            <td class="bigInter">
                <div class="inter1"><i class="icofont-ui-email"></i></div>
                <div class="inter1cont">Email</div>
                <div class="inter1contdetail">ssh9308@naver.com</div>
            </td>
        </tr>
    </table>
    
    
    
    <table class="interestContent" style="height : 100px;">
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    
    <table class="interestContent">
        <tr>
            <td class="bigInter">
                <div class="inter1"><i class="icofont-instagram"></i></div>
                <div class="inter1cont">Instagram</div>
                <div class="inter1contdetail">-</div>
            </td>
            <td></td>
            <td class="bigInter">
                <div class="inter1"><i class="icofont-facebook"></i></div>
                <div class="inter1cont">Facebook</div>
                <div class="inter1contdetail">-</div>
            </td>
        </tr>
    </table>


    <!--------------------------contact 끝------------------------------->
    <table class="interestContent" style="height : 100px;">
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
  


</body>

<script>
    //마우스 움직일때 효과 -> 일단 보류한다.
    //  function resultFun(x) {
    //     var positionLeft = x.clientX;//x좌표를 받는것
    //     var positionTop =  x.clientY;//y좌표를 받는것

    //     document.getElementById('result').style.left = positionLeft - 10 + "px";
    //     document.getElementById('result').style.top = positionTop - 10 +"px";
    //  }

    //  if (document.addEventListener) {
    //      document.addEventListener("mousemove",resultFun);
    //  } else if (document.attachEvent) {
    //      document.addEventListener("onmousemove",resultFun);
    //  }


</script>

</html>