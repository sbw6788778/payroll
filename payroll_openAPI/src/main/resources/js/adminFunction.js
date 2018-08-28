$(document).ready(function(){
	    $("#showAllEmployeeMessege").click(function(){
	    	$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #allEmployee");
	    	var tbody=$("#allEmployee tbody");
	    	$.getJSON('<%=request.getContextPath()%>/showAllEmployeeMessege',function(json){
	            
	            for(var i=0;i<json.length;i++){
	                    addTable(json[i],tbody);
	            }
	    	});
	    return false;
	    });
	});
	function addTable(employee,tbody){
		var content="<tr><td>"+employee.empId+"</td><td>"+employee.name+"</td><td>"+employee.address+"</td><td>"+employee.classification.messege+"</td><td>"+employee.method.messege+"</td></tr>";
		//var content="<tr><td>haha</td></tr>"
		$(tbody).append(content);
	}
	$(document).ready(function(){
  		$("#delectemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #formdelect");
    		return false;
  		});
	});
	$(document).ready(function(){
  		$("#addhourlyemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #addhourlyemployeeform");
    		return false;
  		});
	});
	$(document).ready(function(){
  		$("#addsalaryemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #addsalaryemployeeform");
    		return false;
  		});
	});
	$(document).ready(function(){
  		$("#addcommissionemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #addcommissionemployeeform");
    		return false;
  		});
	});