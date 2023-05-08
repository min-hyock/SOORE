<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body{
            background-color: #fff !important;
        }
    </style>
    <title>Document</title>


    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/logoImg.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>SOORE</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
        name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->

    <link rel="stylesheet" href="assets/css/calendar.css">
    <script src="assets/js/calendar.js"></script>

    <!-- bootstrap 4 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <script>
    
    document.addEventListener('DOMContentLoaded', function () {
        var calendarEl = document.getElementById('calendar');
        // new FullCalendar.Calendar(대상 DOM객체, {속성:속성값, 속성2:속성값2..})

        var calendar = new FullCalendar.Calendar(calendarEl, {
      
            initialDate: '2023-05-01', // 초기 로딩 날짜.
            navLinks: true, // can click day/week names to navigate views
            selectable: true,
            selectMirror: true,
            // 이벤트명 : function(){} : 각 날짜에 대한 이벤트를 통해 처리할 내용..
            events: [
                     {
                       title: "핵심융합프로젝트",
                       start: "2023-04-23",
                       end: "2023-05-05",
                       backgroundColor : "#6C9BCF",
                       borderColor : "#6C9BCF"
                     },
                     {
                        title: "업무관리프로그램 제작",
                       start: "2023-05-15",
                       end: "2023-05-22",
                       backgroundColor : "#BA90C6",
                       borderColor : "#BA90C6"
                     },
                   {
                        title: "SOORE Meeting",
                       start: "2023-05-13T13:00:00",
                       groupId: 999
                     },
                   {
                        title: "Conference",
                       start: "2023-05-08",
                       end: "2023-05-10",
                       backgroundColor : "#FFABAB",
                       borderColor : "#FFABAB"
                     },
                   {
                        title: "SMHRD 정처기특강 강의",
                       start: "2023-05-23",
                       end: "2023-05-27",
                       backgroundColor : "#AAC8A7",
                       borderColor : "#AAC8A7"
                     }
                   ,
                   {
                        title: "HTML 프로젝트 파견😎",
                       start: "2023-05-29",
                       end: "2023-06-03",
                       backgroundColor : "#E8A0BF",
                       borderColor : "#E8A0BF"
                     },
                     {
                         title: "협업 프로젝트 진행",
                        start: "2023-05-05",
                        end: "2023-05-07",
                        backgroundColor : "#ACB1D6",
                        borderColor : "#ACB1D6"
                      }
                 ]
            
            
            ,
            select: function (arg) {
                console.log(arg);

                var title = prompt('입력할 일정:');
                // title 값이 있을때, 화면에 calendar.addEvent() json형식으로 일정을 추가
                if (title) {
                    calendar.addEvent({
                        groupId: 999,
                        title: title,
                        start: arg.start,
                        //end: arg.end,
                        // allDay: arg.allDay,
                        //backgroundColor:"yellow",
                        textColor: "blue"
                    })
                }
                calendar.unselect()
            },
            eventClick: function (arg) {
                // 있는 일정 클릭시,
                console.log("#등록된 일정 클릭#");
                console.log(arg.event);

                if (confirm('할 일 삭제')) {
                    arg.event.remove()
                }
            },
            editable: true,
            dayMaxEvents: true, // allow "more" link when too many events


            //events: 
            //================ ajax데이터 불러올 부분 =====================//
        });

        calendar.render();
    });
        
    </script>
    <style>
        body{
            width: 550px;
            height: 450px;
        }
        .container.calendar {
            float: left;
            margin: 0px !important;
            height: 420px;
        }
    </style>


</head>
	<body>
    <div class="container calendar">
        <div id='calendar'></div>
    </div>
</body>


</html>