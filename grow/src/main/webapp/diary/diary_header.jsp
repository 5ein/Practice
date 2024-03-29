<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>

<!-- Core theme JS-->
<script src="js/scripts.js"></script>

<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />

<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/diary.css" rel="stylesheet" />
<link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


<!-- 일기쓰기 페이지 사진 등록 시 프리뷰 기능 -->
<script type="text/javascript">
function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('preview').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('preview').src = "";
	  }
	}
</script>

<script type="text/javascript">

const API_KEY = "05c35d87be20e2ddfa2406a89541ed0e";

function onGeoOk(position) {
    const lat = position.coords.latitude;
    const longitude = position.coords.longitude;
    const url = "https://api.openweathermap.org/data/2.5/weather?lat="+ lat +"&lon="+ longitude +"&appid="+ API_KEY + "&units=metric&lang=kr";
    
    
    console.log('url', url)
    
    fetch(url)
    	.then(response => response.json())
    	.then(x => {
        const weather = document.querySelector("#weather span:first-child");
        const city = document.querySelector("#weather span:last-child");
        
        const weather_des=  x.weather[0].description;
        const weather_name=  x.name;
        const weather_max=  x.main.temp_max;
        const weather_min=  x.main.temp_min;
        
        console.log('weather_des', weather_des)
        console.log('weather_name', weather_name)
        console.log('weather_max', weather_max)
        console.log('weather_min', weather_min)
        
        const weather_string = weather_des + " " + weather_name+ " " + weather_max + " / " + weather_min;
        
        console.log('weather_min', weather_string)
        
        weather.innerText = weather_string;
        
    });//promise는 당장 뭔가 일어나지 않고 시간이 좀 걸린 뒤 일어난다.
}   
function onGeoError(){
    alert("Can't find you. No weather for you.");
}

navigator.geolocation.getCurrentPosition(onGeoOk, onGeoError);

</script>
