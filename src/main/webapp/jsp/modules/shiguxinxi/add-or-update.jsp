<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red;
		}
	</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="contentText">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul id="navUl" class="navbar-nav mr-auto">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑事故信息</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>事故信息管理</span></li>
								<li class="breadcrumb-item active"><span>编辑事故信息</span></li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">事故信息信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>事故名称</label>
										<input id="shigumingcheng" name="shigumingcheng" class="form-control" placeholder="事故名称">
									</div>
									<div class="form-group col-md-6">
										<label>事故类型</label>
										<select id="shiguleixingSelect" name="shiguleixing" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>账号</label>
										<input id="zhanghao" name="zhanghao" class="form-control" placeholder="账号">
									</div>
									<div class="form-group col-md-6">
										<label>车主姓名</label>
										<input id="chezhuxingming" name="chezhuxingming" class="form-control" placeholder="车主姓名">
									</div>
									<div class="form-group col-md-6">
										<label>车牌</label>
										<input id="chepai" name="chepai" class="form-control" placeholder="车牌">
									</div>
									<div class="form-group col-md-6">
										<label>手机</label>
										<input id="shouji" name="shouji" class="form-control" placeholder="手机">
									</div>
									<div class="form-group col-md-6">
										<label>发生原因</label>
										<textarea name="fashengyuanyin" class="form-control" id="fashengyuanyin" rows="3"></textarea>
									</div>
									<div class="form-group col-md-6">
										<label>处理结果</label>
										<textarea name="chulijieguo" class="form-control" id="chulijieguo" rows="3"></textarea>
									</div>
									<div class="form-group col-md-6">
										<label>事故时间</label>
										<div id="shigushijianDate" class="input-append date form_datetime">
											<input id="shigushijian-input" name="shigushijian" size="15" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>处理警察</label>
										<select id="chulijingchaSelect" name="chulijingcha" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>天气</label>
										<select id="tianqiSelect" name="tianqi" class="form-control">
												<option value=""></option>
												<option class="tianqiOption" value="晴天">
													晴天
												</option>
												<option class="tianqiOption" value="下雨">
													下雨
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>处罚金额</label>
										<input id="chufajine" name="chufajine" class="form-control" placeholder="处罚金额">
									</div>
										
									<div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
										<button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "shiguxinxi";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};

		var shiguleixingOptions = [];
		var chulijingchaOptions = [];

				function shiguleixingSelect(){
					http("option/shiguleixing/shiguleixing","GET",{},(res)=>{
						if(res.code == 0){
							shiguleixingOptions = res.data;
							var nullOption = document.createElement('option');
							var shiguleixingSelect = document.getElementById('shiguleixingSelect');
							shiguleixingSelect.appendChild(nullOption);
							for(var i=0;i<shiguleixingOptions.length;i++){
								var shiguleixingOption = document.createElement('option');
								shiguleixingOption.setAttribute('name','shiguleixingOption');
								shiguleixingOption.setAttribute('value',shiguleixingOptions[i]);
								shiguleixingOption.innerHTML = shiguleixingOptions[i];									
								if(ruleForm.shiguleixing == shiguleixingOptions[i]){
									shiguleixingOption.setAttribute('selected','selected');
								}
								shiguleixingSelect.appendChild(shiguleixingOption);
							}
						}
					});
				}	
				function chulijingchaSelect(){
					http("option/jingchaxinxi/jingyuanmingzi","GET",{},(res)=>{
						if(res.code == 0){
							chulijingchaOptions = res.data;
							var nullOption = document.createElement('option');
							var chulijingchaSelect = document.getElementById('chulijingchaSelect');
							chulijingchaSelect.appendChild(nullOption);
							for(var i=0;i<chulijingchaOptions.length;i++){
								var chulijingchaOption = document.createElement('option');
								chulijingchaOption.setAttribute('name','chulijingchaOption');
								chulijingchaOption.setAttribute('value',chulijingchaOptions[i]);
								chulijingchaOption.innerHTML = chulijingchaOptions[i];									
								if(ruleForm.chulijingcha == chulijingchaOptions[i]){
									chulijingchaOption.setAttribute('selected','selected');
								}
								chulijingchaSelect.appendChild(chulijingchaOption);
							}
						}
					});
				}	

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "shiguxinxi/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 文件上传
		function upload(){
		}  

		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("shiguxinxi/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');
						let flag = true;
						if(flag){
							alert(successMes);
						}
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
							window.sessionStorage.removeItem('onlyme');
							window.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
						
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
		}  

		// 获取富文本框内容
		function getContent(){
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    shiguleixing: {
					required: true,
					},
				    zhanghao: {
					},
				    chezhuxingming: {
					},
				    chepai: {
					},
				    shouji: {
					},
				    fashengyuanyin: {
					},
				    chulijieguo: {
					},
				    shigushijian: {
					required: true,
					},
				    chulijingcha: {
					},
				    tianqi: {
					},
				    chufajine: {
					required: true,
					},
				    ispay: {
					},
				},
				messages: {
					shiguleixing: {
						required: "事故类型不能为空",
					},
					zhanghao: {
					},
					chezhuxingming: {
					},
					chepai: {
					},
					shouji: {
					},
					fashengyuanyin: {
					},
					chulijieguo: {
					},
					shigushijian: {
						required: "事故时间不能为空",
					},
					chulijingcha: {
					},
					tianqi: {
					},
					chufajine: {
						required: "处罚金额不能为空",
					},
					ispay: {
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
			}, "请正确输入您的身份证号码");
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("shiguxinxi/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												shiguleixingSelect();
						chulijingchaSelect();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				shiguleixingSelect();	
				chulijingchaSelect();	

		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#shigushijianDate").datetimepicker({ 
				minView: "month",
				autoclose: true,
				format:'yyyy-mm-dd',
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
		}		
		function calculationSE(colName){
			//单列求和接口
			http("shiguxinxi"+colName,"GET",{
				tableName: "shiguxinxi",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){

				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#shigumingcheng").val(ruleForm.shigumingcheng);	
			var shiguleixingOptions = document.getElementsByClassName("shiguleixingOption");
			for(var shiguleixingCount = 0; shiguleixingCount < shiguleixingOptions.length;shiguleixingCount++){
				if(shiguleixingOptions[shiguleixingCount].getAttribute('value') == ruleForm.shiguleixing){
					shiguleixingOptions[shiguleixingCount].setAttribute('selected','selected');
				}
			}
			$("#zhanghao").val(ruleForm.zhanghao);	
			$("#chezhuxingming").val(ruleForm.chezhuxingming);	
			$("#chepai").val(ruleForm.chepai);	
			$("#shouji").val(ruleForm.shouji);	
			$("#fashengyuanyin").val(ruleForm.fashengyuanyin);
			$("#chulijieguo").val(ruleForm.chulijieguo);
			$("#shigushijian-input").val(ruleForm.shigushijian);
			var chulijingchaOptions = document.getElementsByClassName("chulijingchaOption");
			for(var chulijingchaCount = 0; chulijingchaCount < chulijingchaOptions.length;chulijingchaCount++){
				if(chulijingchaOptions[chulijingchaCount].getAttribute('value') == ruleForm.chulijingcha){
					chulijingchaOptions[chulijingchaCount].setAttribute('selected','selected');
				}
			}
			var tianqiOptions = document.getElementsByClassName("tianqiOption");
			for(var tianqiCount = 0; tianqiCount < tianqiOptions.length;tianqiCount++){
				if(tianqiOptions[tianqiCount].getAttribute('value') == ruleForm.tianqi){
					tianqiOptions[tianqiCount].setAttribute('selected','selected');
				}
			}
			$("#chufajine").val(ruleForm.chufajine);	
			$("#ispay").val(ruleForm.ispay);	
		}		
		//图片显示
		function showImg(){
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.shigumingcheng != null && res.data.shigumingcheng != ''){

					$("#shigumingcheng").val(res.data.shigumingcheng);
					}
					if(res.data != null && res.data != '' && res.data.shiguleixing != null && res.data.shiguleixing != ''){

					var shiguleixingOptions = document.getElementsByClassName("shiguleixingOption");
						for(var shiguleixingCount = 0; shiguleixingCount < shiguleixingOptions.length;shiguleixingCount++){
							if(shiguleixingOptions[shiguleixingCount].getAttribute('value') == res.data.shiguleixing){
								shiguleixingOptions[shiguleixingCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.zhanghao != null && res.data.zhanghao != ''){

					$("#zhanghao").val(res.data.zhanghao);
					}
					if(res.data != null && res.data != '' && res.data.chezhuxingming != null && res.data.chezhuxingming != ''){

					$("#chezhuxingming").val(res.data.chezhuxingming);
					}
					if(res.data != null && res.data != '' && res.data.chepai != null && res.data.chepai != ''){

					$("#chepai").val(res.data.chepai);
					}
					if(res.data != null && res.data != '' && res.data.shouji != null && res.data.shouji != ''){

					$("#shouji").val(res.data.shouji);
					}
					if(res.data != null && res.data != '' && res.data.fashengyuanyin != null && res.data.fashengyuanyin != ''){

					$("#fashengyuanyin").val(res.data.fashengyuanyin);
					}
					if(res.data != null && res.data != '' && res.data.chulijieguo != null && res.data.chulijieguo != ''){

					$("#chulijieguo").val(res.data.chulijieguo);
					}
					if(res.data != null && res.data != '' && res.data.shigushijian != null && res.data.shigushijian != ''){

					$("#shigushijian-input").val(res.data.shigushijian);
					$('#shigushijianFileName').val(res.data.shigushijian)
					}
					if(res.data != null && res.data != '' && res.data.chulijingcha != null && res.data.chulijingcha != ''){

					var chulijingchaOptions = document.getElementsByClassName("chulijingchaOption");
						for(var chulijingchaCount = 0; chulijingchaCount < chulijingchaOptions.length;chulijingchaCount++){
							if(chulijingchaOptions[chulijingchaCount].getAttribute('value') == res.data.chulijingcha){
								chulijingchaOptions[chulijingchaCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.tianqi != null && res.data.tianqi != ''){

					var tianqiOptions = document.getElementsByClassName("tianqiOption");
						for(var tianqiCount = 0; tianqiCount < tianqiOptions.length;tianqiCount++){
							if(tianqiOptions[tianqiCount].getAttribute('value') == res.data.tianqi){
								tianqiOptions[tianqiCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.chufajine != null && res.data.chufajine != ''){

					$("#chufajine").val(res.data.chufajine);
					}
					if(res.data != null && res.data != '' && res.data.ispay != null && res.data.ispay != ''){

					$("#ispay").val(res.data.ispay);
					}
				}
			});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			readonly();
		});		

		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#jifen').attr('readonly','readonly');
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
