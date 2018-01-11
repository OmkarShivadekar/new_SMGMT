<%@page import="com.servletStore.library.model.IssueBookPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.servletStore.library.model.BookCatPOJO"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.servletStore.library.model.BookCatImpl"%>
<%@page import="com.servletStore.library.model.BookDAO"%>
<%@page import="com.servletStore.library.model.AddBookImpl"%>
<%@page import="com.servletStore.library.model.AddBookDAO"%>
<%@page import="com.servletStore.library.model.AddBookPOJO"%>
<%@page import="java.util.List"%>
<%@page import=" utility.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Validations | Admire</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <!--  <link rel="shortcut icon" href="/SMGMT/config/img/xlogo1.ico.pagespeed.ic.ONh6qx31g4.html"/>
    global styles
    <link type="text/css" rel="stylesheet" href="/SMGMT/config/css,_components.css+css,_custom.css+vendors,_jquery-validation-engine,_css,_validationEngine.jquery.css+vendors,_datepicker,_css,_bootstrap-datepicker.min.css+vendors,_datepicker,_css"/>
    <link type="text/css" rel="stylesheet" href="/SMGMT/config/css,_components.css+css,_custom.css+vendors,_select2,_css,_select2.min.css+css,_pages,_dataTables.bootstrap.css+css,_pages,_tables.css.pagespeed.cc._6lRWz19bZ.css"/>
<link type="text/css" rel="stylesheet" href="/SMGMT/config/css,_components.css+css,_custom.css+vendors,_inputlimiter,_css,_jquery.inputlimiter.css+vendors,_bootstrap-colorpicker,_css,_bootstrap-colorpicker.min.css+vendors,_jquery-tagsinput,_c"/>
 <link type="text/css" rel="stylesheet" href="/SMGMT/config/css,_components.css+css,_custom.css+vendors,_izitoast,_css,_iziToast.min.css.pagespeed.cc.hUh8XIbhbe.css"/>
   --> 
   <jsp:include page="/View/common/commonCss.jsp"></jsp:include>
    <!-- end of global styles-->
    
    <style type="text/css">
    	#information{
    		margin-top: 30px;
    	}
    </style>
    
    
   
</head>
<body onload="myFunction()">
<div class="preloader" style=" position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 100000;
  backface-visibility: hidden;
  background: #ffffff;">
    <div class="preloader_img" style="width: 200px;
  height: 200px;
  position: absolute;
  left: 48%;
  top: 48%;
  background-position: center;
  z-index: 999999">
        <img src="/SMGMT/config/img/loader.gif.pagespeed.ce.pu_lpoGKrw.gif" style=" width: 40px;" alt="loading...">
    </div>
</div>
    <div id="wrap">
        <div id="top">
            <!-- .navbar -->
            	<jsp:include page="/View/common/header.jsp"></jsp:include>
            <!-- /.navbar -->
        </div>
        <!-- /#top -->
        
        
        <div class="wrapper">
        	 <!-- /.left navbar -->
                <jsp:include page="/View/common/left-navbar.jsp"></jsp:include>
             <!-- /.left navbar -->
             
             
            <!-- /#left -->
            <div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar">
                        <div class="row no-gutters">
                            <div class="col-sm-5 col-lg-6">
                                <h4 class="nav_top_align">
                                    <i class="fa fa-pencil"></i>
                                    	Fine Details
                                </h4>
                            </div>
                            <div class="col-sm-7 col-lg-6">
                                <ol class="breadcrumb float-right nav_breadcrumb_top_align">
                                    <li class="breadcrumb-item">
                                        <a href="index1.html">
                                            <i class="fa fa-home" data-pack="default" data-tags=""></i>
                                            Dashboard
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item">
                                        <a href="#">Library</a>
                                    </li>
                                    <li class="active breadcrumb-item">Fine Submission</li>
                                </ol>
                               </div>
                            </div>
                        </div>
                   </header>
                
             <!-- start your code from here  -->  
                  <div class="outer">
                    <div class="inner bg-container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-header bg-white">
                                        <i class="fa fa-file-text-o"></i>
                                  		  Fine Information
                                    </div>
                                   <div class="row">
				                          <div class="col-12">
				                                       <div class="col-lg-8 m-t-20">
				                                          <form action="/SMGMT/Library" class="form-horizontal  login_validator" id="form_block_validator">
		                                     				 <div class="form-group row">
		                                          	      		<div class="col-lg-8">
		                                          	      			<input type="hidden" name="studId" id="stud_Id">
		                                                			<input type="text" list="browseStud" autocomplete="off" onkeyup="getstuddetails(this.value)" oninput="getStudId(this.value)" onblur="getStudInfo('studInfo',event)" class="form-control" style="margin-left: 9px;" id="searchStud"  name="searchStud" placeholder="Search Student by GRN/Name" required>
			                                                		<datalist id="browseStud">
			                                                		</datalist>
			                                                		<span id="studentListErrorMsg11" style="color: red;"></span>
			                                                		<small class="help-block" data-bv-validator="notEmpty" id="studentListErrorMsg" style=""></small>
		                                                 		</div> 
		                                                 	</div>
		                                                  <div id="studInfo" style="display: none;">
		                                                 	<div class="form-group row">

																		<div class="col-lg-4 ">
																		<label for="required2" class="col-form-label">Fisrt Name
																				</label> <input type="text" id="first_Name" name="firstName"
																				class="form-control" readonly="readonly">
																		</div>
																		<div class="col-lg-4 ">
																			<label for="required2" class="col-form-label">Middle
																				Name</label> <input type="text" id="middle_Name" name="middleName"
																				class="form-control" readonly="readonly">
																		</div>
																		<div class="col-lg-4">
																			<label for="required2" class="col-form-label">Last
																				Name</label> <input type="text" id="last_Name"
																				name="lastName" class="form-control" readonly="readonly">
																		</div>
																		</div>
																		<div class="form-group row">
																		<div class="col-lg-4">
																			<label for="required2" class="col-form-label">Standard
																				</label> <input type="text" id="std_Id"
																				name="std" class="form-control" readonly="readonly">
																		</div>
																		<div class="col-lg-4">
																			<label for="required2" class="col-form-label">Division
																				</label> <input type="text" id="div_Id"
																				name="div" class="form-control" readonly="readonly">
																		</div>
																		<div class="col-lg-4">
																			<label for="required2" class="col-form-label">Total Fine
																				</label> <input type="text" id="total_Fine"
																				name="totalFine" class="form-control" onblur="countFineNill(this.value)" readonly="readonly">
																		</div>
																	</div>
																</div> 		
														<div class="form-group row">
		                                                 	     <div class="form-actions">
																	<input type="submit" id="returnSubmit" value="Submit Fine"
																		name="submitfine" class="btn btn-success" style="margin-left: 24px;" >
																		</div>
		                                                 	</div>
														
		                                                  </form>
				                              </div>
				                            </div>
				                          </div>
				                            <!-- Book Table -->  
										  </div>
				                 </div>
                            </div> <!-- /.col-lg-12 -->
                        </div> <!-- /.row -->
                    </div> <!-- /.inner -->
                </div> <!-- /.outer -->
            
            
               <!-- Modal -->
                 <div class="modal fade show" id="payFine" role="dialog" aria-labelledby="modalLabelnews">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header bg-primary">
                                <h4 class="modal-title text-white" id="modalLabelnews"><strong>Do you want to give discount?</strong></h4>
                            </div>
                            <div class="modal-body">
                            	<div class="form-group row">
																		<div class="col-lg-4 ">
																		<label for="required2" class="col-form-label" style="margin-left: 21%;">Fine Amount
																				</label> <input type="text" id="fineId" name="firstName"
																				class="form-control" style="margin-left: 21%;" readonly="readonly">
																		</div>
																		<div class="col-lg-4 ">
																			<label for="required2" class="col-form-label" style="margin-left: 44%;">Paid Amount
																				</label> <input type="text" id="paidId" name="middleName" value="0" oninput="countTotalFine(this.value)"
																				class="form-control" style="margin-left: 44%;">
																				<small class="help-block" data-bv-validator="notEmpty" id="error" style=""></small>
																		</div></div>
																		<div class="form-group row">
																		<div class="col-lg-4 ">
																		<label for="required2" class="col-form-label" style="margin-left: 21%;">Discount
																				</label> <input type="text" id="discountId" name="firstName" value="0"
																				class="form-control" style="margin-left: 21%;" readonly="readonly">
																		</div>
																		<div class="col-lg-4 ">
																		<label for="required2" class="col-form-label" style="margin-left: 44%;">Fine
																				</label> <input type="text" id="remainId" name="firstName"
																				class="form-control" style="margin-left: 44%;" readonly="readonly">
																		</div>
																		</div>
                            		<!-- <ul>
	                            		<li id="tFine"><strong>Total Fine =</strong></li>
	                            		<li id="pFine"><strong>Paid Amount =</strong></li>
	                            		<li id="pFine"><strong>Discount =</strong></li>
	                            		<li id="rBal"><strong>Remaining Balance =</strong></li>
	                            	</ul> -->
                            	
                            	   
                            </div>
                            
                            <div class="modal-footer">
                            	<button class="btn btn-success" data-dismiss="modal" onclick="giveDiscount()">Yes</button>
                            	<button class="btn btn-warning" data-dismiss="modal">No</button>
                            </div>
                           
                        </div>
                    </div>
                </div>  <!-- /Modal  -->
           
            
            
            </div> <!-- /#content -->
        </div>
        
       <!--wrapper-->
       
        

<!-- /#wrap -->


<jsp:include page="/View/common/commonJs.jsp"></jsp:include>

<!-- end plugin scripts -->
<!--Page level scripts-->
    
    <script>eval(mod_pagespeed_g_o5ieHdNa);</script>
    <script>eval(mod_pagespeed_UzcyJ5ysoL);</script>
    <script>eval(mod_pagespeed_sB4kJD0xfI);</script>
    <script>eval(mod_pagespeed_aYQJk4iDci);</script>
    <script>eval(mod_pagespeed_wVkzf2s7YZ);</script>
    <script>eval(mod_pagespeed_Ij0pRaH8BP);</script>
    <script>eval(mod_pagespeed_wfmKXYO4Nj);</script>
    <script>eval(mod_pagespeed_EYzby3B1$L);</script>

    <script type="text/javascript" src="/SMGMT/config/js/pages/users.js"></script>

</body>
<script type="text/javascript">
/*<<<<<<<<<<<<<<<<<< Ajax for Serach Student Info >>>>>>>>>>>>>>>>>>>>>>>>>*/
function getstuddetails(id){
//	alert(id);
	var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     var demo = this.responseText;
	     var stud=demo.split(",");
	     
	     //var studId=demo.split("#");
	    // document.getElementById("stud_Id").value=studId[0];
	    // alert(x[0]);
	     for(var i=0; i<stud.length; i++)
	    	 {	
	    	 	var text=text+"<option value=\""+stud[i]+"\"> </option>";
	    	 }
	     
			document.getElementById("browseStud").innerHTML = text;	
			
	    }
	  };
	  xhttp.open("POST", "/SMGMT/Library?studDetails="+id, true);
	  xhttp.send();
}

/* <<<<<<<<<<<<<<<<<<<Search Student info from here- (grn, name, std, div, shift) >>>>>>>>>>>>>>>>>>>>>>>>>*/
function getStudId(val)
{
	var opts = document.getElementById('browseStud').childNodes;
	for (var i = 0; i < opts.length; i++) {
		 if (opts[i].value === val) 
		 {
			 var xhttp = new XMLHttpRequest();
			  xhttp.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			     var demo = this.responseText;
			     var stud=demo.split(",");
			     var studId=demo.split("#");
			     document.getElementById("stud_Id").value=studId;
			    //alert(studId);
			     }
			  };
			  xhttp.open("POST", "/SMGMT/Library?getstudId="+val, true);
			  xhttp.send(); 
	    	  break;
		 }
	}
}

function getStudInfo(studInfo,e)
{
	var sInfo = document.getElementById("studInfo").style.display = "block";
 	var searchIdVal = document.getElementById("searchStud").value;
	//alert(id);
	var studsrchId = searchIdVal.split("-");
	//alert(studsrchId);
	var studId=document.getElementById("stud_Id").value;
	//alert(studId);
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			var demo = this.responseText;
			//alert(demo);
			var stud = demo.split(",");
			if(stud[0]=="null")
			{
				document.getElementById("studentListErrorMsg").innerHTML="No records found for this student";
				document.getElementById("studentListErrorMsg").style.color="#27ae60";
			}
			else
			{
				alert('Student Info'+stud);
			 	document.getElementById("first_Name").value = stud[0];
				document.getElementById("middle_Name").value = stud[1];
				document.getElementById("last_Name").value = stud[2];
				document.getElementById("std_Id").value = stud[3];
				document.getElementById("div_Id").value = stud[4];
				document.getElementById("total_Fine").value = stud[5];
				document.getElementById("studentListErrorMsg").innerHTML="";
			}
			
		}
	};
	//	  alert(bookD[0]);
	xhttp.open("POST", "/SMGMT/Library?studFineDetail="+studId, true);
	xhttp.send(); 
	//}
}

function countFineNill(val)
{
	//alert('hello');	
	$('#payFine').modal('show');
}

$('#payFine').on('show.bs.modal', function(e) {

    //putting values in bootstrap modal
    var fineAmount=parseInt(document.getElementById("total_Fine").value);
   /*  var paidAmount=parseInt(document.getElementById("paidAmountId").value);
    var remainAmt = fineAmount - paidAmount;
    */ 
	document.getElementById("fineId").value=fineAmount;
	/* document.getElementById("pFine").innerHTML='<strong>Paid Fine = </strong>'+paidAmount;
	document.getElementById("rBal").innerHTML='<strong>Remaining Fee = <strong>'+remainAmt;
    */
	
	 
});

function countTotalFine(val)
{
	
	 var fineAmount=parseInt(document.getElementById("total_Fine").value);
	 document.getElementById("fineId").value=fineAmount;
	 var payAmount=parseInt(document.getElementById("paidId").value);
	 if(payAmount>fineAmount)
		 {
			 document.getElementById("discountId").value=0;
			 document.getElementById("error").innerHTML="* Enter valid amount";
			 document.getElementById("error").style.color="#27ae60";
		 }
	 else{
			var discount=fineAmount-payAmount;
			document.getElementById("discountId").value=discount;
			document.getElementById("error").innerHTML="";
			//document.getElementById("errorMsg").style.color="#27ae60";
			document.getElementById("remainId").value=0;
		 }
}


function giveDiscount()
{
	var remainFineAmount=parseInt(document.getElementById("remainId").value);
	document.getElementById("total_Fine").value=remainFineAmount;
   
	
}
</script>



</html>