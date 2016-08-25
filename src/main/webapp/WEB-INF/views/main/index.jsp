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
}

.focused {
  fill: rgba(250,250,250,0.2);
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

</style>
<div class="col-lg-12 globe-div" align="center">

</div>
