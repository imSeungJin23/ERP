<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  

 <script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src='js/recruit.js?<%=new java.util.Date() %>'></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"></script>
 
<style>
.center {
	text-align: center;
}
footer{
	top: 30%
}

.hrlist {
	margin: 1rem 0;
	color: #000000;
	font-size: 38px;
	font-family: 'Noto Sans KR' !important;
}
	table {
	margin-top : 5px;
/* 	border-top-left-radius: 20px; */
/*     border-top-right-radius: 20px; */
	padding-bottom : 2rem;
	border-radius : 15px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}
	
td a{
	color : #323232;
}
th, td {
  padding: 15px;
  background-color: #fff;
  color: #000000;
  
}

th {
  text-align: center;
}
th {
  background : #12192c;
  color : #fff;
}
tbody tr:hover, td:hover {
  background-color: rgba(255, 255, 255, 0.5);
}
tbody td {
  position: relative;
}
tbody td:hover:before {
 
  background-color: rgba(255, 255, 255, 0.2);
  z-index: -1;
}

.new-btn{
  padding: 1em 1.8em;
  font-size: 14px;
  font-weight: 400;
  font-family:'Noto Sans KR', sans-serif;
  border-radius: 4px;
  cursor: pointer;
  -webkit-appearance: none;
     -moz-appearance: none;
          appearance: none;
  border: none;
  color: #ffffff;
  margin-bottom: 10px;
	background : #12192c;
	position: relative;
	left: 4%;
}
select {
	position: relative;
	/* left: 5%; */
	width: 180px;
	padding: .7em 1.9em;
	font-family: inherit;
	background: url('imgs/arrow.jfif') no-repeat 95% 50%;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	box-shadow: 0 1px 25px rgba(0, 0, 0, 0.2);
	border: 2px solid #fff[];
	border-radius: 3px;
}
.full {
	width: calc(100% - 22px)
}

select::-ms-expand {
	display: none;
}
.btnSet{
text-align:center;
	margin-top: 30px;
}

#delete-file, #attach-file {
display:none;
}
#delete {
display:none;
}
#delete_end {
display:none;}

body {
margin: 3rem auto;
}

table {
margin: 3rem auto;
}

.btn {
text-align: center;
}
.btn a{
margin-right: 3rem;
text-decoration: none;
}
</style>
</head>
<body>
<h2 class="center hrlist">???????????? ??????</h2>
<form method='post' action='insert.rec' enctype='multipart/form-data'>
<table style='width: 1000px'>

<tr><th style='width: 150px;'>????????????</th>
	<td>
	<select	name='employee_pattern' class='w-px200' > 
				<!-- 
				
						<option value='-1'>?????????</option>
						<option value='1'>?????????</option>
	
				 -->
				<c:forEach items='${code}' var='c'>
						<option value='${c.code_value }'>
	 ${c.code_name }</option>
	
				</c:forEach> 
			</select>
	</td>
</tr>
<tr><th class='w-px140'>????????????</th>
	<td>
	<select	name='career' class='w-px200' > 
				<!-- 
				
						<option value='-1'>??????</option>
						<option value='1'>??????</option>
	
				 -->
				<c:forEach items='${career}' var='car'>
						<option value='${car.code_value }'>
	 ${car.code_name }</option>
	
				</c:forEach> 
			</select>
	</td>
</tr>
<tr><th class='w-px140'>??????</th>
	<td>
	<select	name='company' class='w-px200' > 
				
	<!-- 			
						<option value='-1'>??????</option>
						<option value='1'>??????</option>
	
				 -->
				<c:forEach items='${company}' var='com'>
						<option value='${com.company_cd }'>
	 ${com.company_name }</option>
	
				</c:forEach>
			</select>
	</td>
</tr>
<tr><th>???????????????</th>
<td><input type="text" id="from" class="date" name="recruit_start" readonly>
<a id='delete'><i class="font-r fa-regular fa-calendar-xmark"></i></a>
</td>
</tr>
<tr><th>???????????????</th>
<td><input type="text" id="to" class="date" name="recruit_end" readonly>
<a id='delete_end'><i class="font-r fa-regular fa-calendar-xmark"></i></a>
</td>
</tr>



<tr><th  class='w-px140'>??????</th>
	<td><input style='height: 36px; ' type='text' name='salary' class='full chk' title='??????'></td>
</tr>
<tr><th class='w-px140'>??????</th>
	<td><input style='height: 36px; width: 776px;' type='text' name='recruit_title' class='full chk' title='??????'></td>
</tr>
<tr><th>??????</th>
	<td><textarea style='height: 250px' name='recruit_content' class='full chk' title='??????'></textarea></td>
</tr>
<tr><th>????????????</th>
	<td class='text-left'>
		<div class='align'>
		<label>
			<input type='file' name='file' id='attach-file'>
			<a><i class="font-b fa-solid fa-file-circle-plus"></i></a>
		</label>
		<span id='file_name'></span>
		<span id='preview'></span>
		<a id='delete-file'><i class="font-r fa-solid fa-trash-can"></i></a>
		</div>
	</td>
</tr>
</table>
<input type='hidden' name='writer' value='${loginInfo.employee_id}'>
</form>
<div class='btn' style='width: 1880px'>
	<a class='new-btn' id='save'>??????</a>
	<a class='new-btn' href='list.rec'>??????</a>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
  <script>
  $( function() {
	  
	    var dateFormat = "yy/mm/dd",
	      from = $( "#from" )
	        .datepicker({
	          showMonthAfterYear: true, //??????,??? ????????? ??????
	          changeMonth: true,//??? ?????? ??????
	          dateFormat:"yy/mm/dd",//?????? ??????
	          dayNamesMin: ["???", "???", "???", "???", "???", "???", "???" ],//?????? ?????? ??????
	          monthNamesShort: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],//??? ?????? ??????
	          minDate:0 //?????? ?????? ????????? ????????? ??? ??????
	        })
	        .on( "change", function() {
	          to.datepicker( "option", "minDate", getDate(this) );//???????????? minDate ??????
	        }),
	      to = $( "#to" ).datepicker({
	     showMonthAfterYear: true,  
	        changeMonth: true,
	        dateFormat:"yy/mm/dd",
	        dayNamesMin: ["???", "???", "???", "???", "???", "???", "???" ],
	        monthNamesShort: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
	        minDate:'+1D' //???????????? ????????????, ???????????? ???(+1D +1M +1Y)
	      })
	      .on( "change", function() {
	        from.datepicker( "option", "maxDate", getDate(this) );//???????????? maxDate ??????
	      });
	 
	    function getDate(element) {
	      var date;
	      try {
	        date = $.datepicker.parseDate( dateFormat, element.value );
	        if(element.id == 'from'){
	        date.setDate(date.getDate()+1);//???????????? ???????????? ?????? ???????????? ????????? ??? ????????? ??????
	        }else{
	         date.setDate(date.getDate()-1);//???????????? ??????????????? ?????? ????????? ????????? ??? ????????? ??????
	        }
	      } catch( error ) {
	        date = null;
	      }
	      return date;
	    }
	  } );
  
  $('#save').click(function(){
	  if( emptyCheck() ) 	$('form').submit(); //?????? ?????? : if( emptyCheck() ) 
	});
  $('.date').change(function(){
		$(this).next().css('display', 'inline');
		
	});
  $('#delete').click(function(){
		$(this).siblings('.date').val('');
		$(this).css('display', 'none');
	});
  $('#delete_end').click(function(){
		$(this).siblings('.date').val('');
		$(this).css('display', 'none');
	});
</script>
</body>
</html>







