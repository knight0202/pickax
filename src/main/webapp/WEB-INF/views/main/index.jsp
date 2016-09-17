<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	.globe-div{
		padding:0px;
	}
</style>
<style type="text/css">

.water {
  fill: rgba(200,200,200,0.2);
}

.land {
  fill: rgba(10,10,10,0.4);
  stroke: rgba(250,250,250,0.2);
  stroke-width: 0.7px;
}

.land:hover {
  fill:rgba(250,250,250,0.5);
  stroke-width: 1.5px;
  cursor: pointer;
}

.focused {
  fill:rgba(250,250,250,0.7);
}
select {
  position: absolute;
  top: 100px;
  left: 980px;
  border: solid #ccc 1px;
  padding: 3px;
  box-shadow: inset 1px 1px 2px #ddd8dc;
}

.countryTooltip {
  position: absolute;
  display: none;
  pointer-events: none;
  background: #fff;
  padding: 5px;
  text-align: left;
  border: solid #ccc 1px;
  color: #666;
  font-size: 14px;
  font-family: sans-serif;
}
.modal {
  text-align: center;
  padding: 0!important;
}

.modal:before {
  content: '';
  display: inline-block;
  height: 100%;
  vertical-align: middle;
  margin-right: -4px;
}

.modal-dialog {
  display: inline-block;
  text-align: left;
  vertical-align: middle;
}
.modal-content{
  background-color: rgba(200,200,200,0.3);
}
.float-right{
	float:right;
}
.float-left{
	float:left;
}
</style>
<script>
	var list = [];
	<c:forEach var = "country" items="${countryList}">
		list.push(["${country.id}","${country.countryNameKr}","${country.countryNameEn}","${country.iso}","${country.iso2}","${country.iso3}","${country.continent}","${country.capitalKr}","${country.capitalEn}","${country.area_km2}","${country.timeZoneInCapitalEn}","${country.e164}","${country.currency}"]);
	</c:forEach>
	
	var country;
	var timeZone;
	
	function fn_countryClicked(id){
		//선택된 나라 저장
		for(var i = 0; i < list.length; i++){
			if(id == list[i][0]){
				country = list[i];
				break;
			}
		}
		$(".modal-text").eq(0).text(country[1] + " ( " + country[5]+ " )");
		$(".modal-text").eq(1).text(country[2]);
		$(".modal-text").eq(2).text(country[7] + " ( " + country[8]+ " )");
		$(".modal-text").eq(3).text(country[6]);
		$(".modal-text").eq(4).text(country[9].replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + " ㎢");
		$(".detFlag img").attr("src","${pageContext.request.contextPath}/resources/img/flags-normal/" + country[4].toLowerCase() + ".png");
	}
	function fn_countrySelected(){
		$(".modal-text").text("");
		
		
		//select 이벤트
		var id = countryInfoObject.id;
		
		if(countrySelected == 0){
    		$("#content .container").css("display","none");
    	}else{
    		clearInterval(timeInterval);
    	}
    	
    	$("#footer-content").slideDown("slow",function(){
    		countrySelected = 1;
    	});
    	
    	$("#header-content").slideDown("slow",function(){
    		
    	});
    	
    	var selected = countryInfoObject;
    	var rotate = projection.rotate(),
        //focusedCountry = country(countries, d),
        p = d3.geo.centroid(countryInfoObject);

        svg.selectAll(".focused").classed("focused", focused = false);

      //Globe rotating

      (function transition() {
        d3.transition()
        .duration(1000)
        .tween("rotate", function() {
          var r = d3.interpolate(projection.rotate(), [-p[0], -p[1]]);
          return function(t) {
            projection.rotate(r(t));
            svg.selectAll("path").attr("d", path)
            .classed("focused", function(countryInfoObject, i) { return countryInfoObject.id == selected.id ? focused = countryInfoObject : false; });
          };
        })
        })();
      
      //select 된 나라 정보 show
      	timeZone = country[10];
      	$(".show-text").eq(0).text(country[1]);
		$(".show-text").eq(1).text(country[2]);
		$(".show-text").eq(2).text(country[4]);
		$(".show-text").eq(3).text(country[5]);
		$(".show-text").eq(4).text(country[7]);
		$(".show-text").eq(5).text(country[8]);
		$("#show-standard").text(country[8]+" 표준시");
		$("#show-num").text("+" + country[11]);
		$("#show-cont").text(country[6]);
		$("#show-currency").text(country[12] + " ( " + country[3] + " )");
		timeInterval = setInterval(startTime,1000);
		//startTime();
	}
</script>
<div class="col-lg-12 globe-div" align="center">

</div>

<!-- Modal -->

<div id="selectConfirmModal" class="modal fade" role="dialog" data-easein="expandIn">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <a data-dismiss="modal" class="btn no-padding" style="float:right;" onclick="fn_close()"><i class="fa fa-times pickax-btn-fa"></i></a>
        <h4 class="modal-title">선택 확인</h4>
      </div>
      <div class="modal-body" style="overflow:auto;">
        <div class="col-lg-5 detFlag no-padding">
        	<img class="" src="" style="width:100%; background-image: url('${pageContext.request.contextPath}/resources/img/common/spinner.gif');"/>
        </div>
        <div class="col-lg-7">
        	<p class="float-right modal-text"></p>
        	<p>국가명 :</p>
        	<p class="float-right modal-text"></p>
        	<p>영문명 :</p>
        	<p class="float-right modal-text"></p>
        	<p>수도 :</p>
        	<p class="float-right modal-text"></p>
        	<p>대륙 :</p>
        	<p class="float-right modal-text"></p>
        	<p>면적 :</p>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" id="btn_confirm" onclick="fn_countrySelected()" class="btn" style="color:white; background-color:rgba(150,150,150,0.3); font-size:18px;" data-dismiss="modal"><i class="fa fa-globe"></i>&nbsp;이 동</button>
        <button type="button" id="btn_confirm" onclick="fn_close()" class="btn" style="color:white; background-color:rgba(150,150,150,0.3); font-size:18px;" data-dismiss="modal"><i class="fa fa-times"></i>&nbsp;취 소</button>
      </div>
    </div>

  </div>
</div>
