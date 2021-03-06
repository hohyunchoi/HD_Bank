<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<div class="content">
				<!-- 상단의 푸른색 공간 시작 -->
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">고객정보관리</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="tap" class="btn btn-white btn-sm btn-border mr-1">ID조회</a>
								 </h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								<a href="checkbalance" class="btn btn-white btn-border btn-round mr-2">빠른 페이지</a>
								<a href="qna" class="btn btn-secondary btn-round">고객센터</a>
							</div>
						</div>
					</div>
				</div>
				<!-- 상단의 푸른색 공간 끝 -->
				<div class="page-inner mt--5">
				<!-- 페이지 레이아웃 시작 -->
				<div class="row row-card-no-pd">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<p class="card-category">ID조회</p>
									
								</div>
								
								<div class="card-body">
									<div class="row">
										<div class="col-md-10">
											<div class="table-responsive table-hover table-sales">
											<div  style="margin: auto;">
									
									
									
									
									
										
										
										
									<div class="col-md-10">
							<div class="card">
								
								<div class="card-body">
									<ul class="nav nav-pills nav-secondary" id="pills-tab" role="tablist">
										<li class="nav-item">
											<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" 
											role="tab" aria-controls="pills-home" aria-selected="true">ID조회</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" 
											role="tab" aria-controls="pills-profile" aria-selected="false">비밀번호조회</a>
										</li>
										
									</ul>
									
									
									
									
									
									<div class="tab-content mt-2 mb-3" id="pills-tabContent">
										<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" >
											<tr>
												<td>이름</td>
												<td><div class="col-md-9 p-0">
													<input type="text" class="form-control input-full" id="inputname" placeholder="(이름)" name="sename">
												</div></td>
												<br>
											</tr>
											<tr>
												<td>생년월일</td>
												<td><div class="col-md-9 p-0">
													<input type="text" class="form-control input-full" id="inputbirth" placeholder="(생년월일)" name="sebirth">
												</div></td>
												
											</tr>
											<br>
											<input type="button" id="idgo" style="text-align: center;" class="btn btn-primary btn-round" value="확인">
											
									
									<div id="ajaxtarget" style="display: inline-block; margin: 15px;" ></div>
										
										
										</div>
										
										<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
											<tr>
												<td>이름</td>
												<td><div class="col-md-9 p-0">
													<input type="text" class="form-control input-full" id="inputname1" placeholder="(이름)">
												</div></td>
											</tr>
											<tr>
												<td>ID</td>
												<td><div class="col-md-9 p-0">
													<input type="text" class="form-control input-full" id="inputid" placeholder="(아이디)">
												</div></td>
											</tr>
											<tr>
												<td>생년월일</td>
												<td><div class="col-md-9 p-0">
													<input type="text" class="form-control input-full" id="inputbirth1" placeholder="(생년월일)">
												</div></td>
											</tr>
											<br>
											<input type="button" id="pwgo" style="text-align: center;" class="btn btn-primary btn-round" value="확인">
											
											<div id="ajaxpwd" style="display: inline-block; margin: 15px;" ></div>
										</div>
										
									</div>
								</div>
							</div>
						</div>
										
										
										
										
								
									</div>
										
										
									
									
									
									
									
									
								</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="mapcontainer">
												<div id="map-example" class="vmap"></div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="card-body">
								
								</div>
							</div>
						</div>
				
					
					<!-- 페이지 레이아웃 끝 -->
			
			


		
			
			
	<script> 
	
	
	$(function() {
	var emailPath = null;
	var namesy;
	$('#idgo').click(function () {
		namesy=encodeURI($('#inputname').val(),"UTF-8");
		console.log("namesy : " + namesy)
		emailPath = 'getemail?mem_name='+namesy+'&mem_birth='+$('#inputbirth').val();
		console.log("emailPath : " + emailPath)
				$.ajax({
					url:emailPath,
					contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
					success: function (data) {
					'당신의 아이디는'+$('#ajaxtarget').html(data)+'입니다';
					
					},
					error : function(xhr, textStatus, errorThrown){
				        // Error시, 처리
				        alert(xhr);
				        alert(textStatus);
				        alert(errorThrown);
				    }
				})
		})
	})
	
	$(function() {
	var pwdpath = null;

	
	$('#pwgo').click(function () {
		var name = encodeURI($('#inputname1').val(),"UTF-8");
		var birth = encodeURI($('#inputbirth1').val(),"UTF-8");
		var id = encodeURI($('#inputid').val(),"UTF-8");
		
		
		
		pwdpath = 'getpwd?mem_name='+name+'&mem_birth='+birth+'&mem_email='+id;
		console.log("pwdpath : " + pwdpath)
				$.ajax({
					url:pwdpath,
					contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
					success: function (data) {
					'당신의 비밀번호는'+$('#ajaxpwd').html(data)+'입니다';
					
					},
					error : function(xhr, textStatus, errorThrown){
				        // Error시, 처리
				        console.log(xhr);
				        console.log(textStatus);
				        console.log(errorThrown);
				    }
				})
		})
	})
	

	</script>
