<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="STU" tagdir="/WEB-INF/tags"%>    

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Product Management</title>
<!-- 파비콘 삽입 -->
<link rel="icon" href="img/StarToUp_Logo.png">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="keywords" />
<meta content="" name="description" />


<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com"/>
<link
   href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
   rel="stylesheet" />

<!-- Icon Font Stylesheet -->
<link
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
   rel="stylesheet" />
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
   rel="stylesheet" />

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
   rel="stylesheet" />
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
   rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrapAdmin.min.css" rel="stylesheet" />

<!-- Template Stylesheet -->
<link href="css/styleAdmin.css" rel="stylesheet" />
</head>

<style>
   #preview {
      
      
   
   }
   
</style>

<body>
   <div class="container-fluid position-relative d-flex p-0">
      <!-- Spinner Start -->
      <div id="spinner"
         class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
         <div class="spinner-border text-primary"
            style="width: 3rem; height: 3rem" role="status">
            <span class="sr-only">Loading...</span>
         </div>
      </div>
      <!-- Spinner End -->

      <!-- Sidebar Start -->
      <STU:sideBar/>
      <!-- Sidebar End -->

      <!-- Content Start -->
      <div class="content">
         <!-- Navbar Start -->
         <STU:navBar/>
         <!-- Navbar End -->

         <!-- Table Start -->
         <div class="container-fluid pt-4 px-4">
            <div class="row g-4">
               <div class="col-sm-12 col-xl-6" style="width: 100% !important">
                  <div class="bg-secondary rounded h-100 p-4">
                  
                  <h3 class="mb-4">Add Product</h3>
                     <form method="post" action="adminProductInsert.do" enctype="multipart/form-data">
                        
                        <div class="mb-3">
                           <label for="pName" class="form-label">상품
                              이름</label> <input type="text" class="form-control"
                              id="pName" name="pName" aria-describedby=""  required/> <br>
                        </div>
                        <div class="mb-3">
                           <label for="pAmount" class="form-label">펀딩
                              목표 금액</label> <input type='text' name='pAmount' id='TargetAmount'
                              onkeyup='call()' class="form-control"
                              id="pAmount" pattern="[0-9]+" required>
                        </div>
                        
                        <div class="mb-3">
                           <div>
                              <label for="funding" class="form-label">펀딩인원 / 1인당 금액</label>
                           </div>
                           <div style="display: inline-block ; width: 48%">   
                              <input type='text' name='people' id='personnel'
                                 onkeyup='call()' class="form-control"
                                 id="funding" pattern="[0-9]+" required>
                           </div>
                           <div style="display: inline-block; width:2.5%">
                           &nbsp;&nbsp;/&nbsp;&nbsp;
                           </div>
                           <div style="display: inline-block; width: 48%">
                              <input   type='text' name='pPrice' id='result' class="form-control"
                                 id="funding" >
                           </div>
                           
                           <div class="form-text">
                           펀딩 목표금액과 인원을 입력하시면   1인당 금액이 자동 계산 됩니다.</div>
                           <br>
                        </div>


                        <div class="mb-3">
                           <label for="exampleInputPassword1" class="form-label">상품
                              이미지 등록</label> <input class="form-control bg-dark" type="file"
                              id="formFileMultiple" name="uploadFile"
                              onchange="readURL(this);" multiple />
                           <div id="preview" ></div>
                        </div>
                        <br> <br>
                        <button type="submit" class="btn btn-primary"
                           style="float: right; border-radius: 80px">상품 등록</button>
                           <br>
                           <br>
                     </form>
                  </div>
               </div>
            </div>
         </div>
         <!-- Table End -->


      </div>
      <!-- Content End -->

   </div>

   <!-- JavaScript Libraries -->
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
   <script src="lib/chart/chart.min.js"></script>
   <script src="lib/easing/easing.min.js"></script>
   <script src="lib/waypoints/waypoints.min.js"></script>
   <script src="lib/owlcarousel/owl.carousel.min.js"></script>
   <script src="lib/tempusdominus/js/moment.min.js"></script>
   <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
   <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

   <!-- Template Javascript -->
   <script src="js/mainAdmin.js"></script>

   <!-- 계산기 JS -->
   <script>
      function call() {
         if (document.getElementById("TargetAmount").value
               && document.getElementById("personnel").value) {
            document.getElementById('result').value = parseInt(document
                  .getElementById('TargetAmount').value)
                  / parseInt(document.getElementById('personnel').value);
         }
      }
   </script>
   
     <script src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous">
   </script>
   
   <!-- 상품 미리보기 JS -->
    <script type="text/javascript">
         
         function readURL(input) {
        
           //초기화해주어야함
            $('#preview').empty();
            
             var files = input.files;  
             var filesArr = Array.prototype.slice.call(files);  
            
             //파일은 최대 3개까지 업로드 가능 //3개 초과이면 초기화,alert창
             if(files.length > 3){
                var agent = navigator.userAgent.toLowerCase();
                if (agent.indexOf("msie") != -1) {
                 //브라우저가 ie 일때 
                 $("#formFileMultiple").replaceWith( $("#formFileMultiple").clone(true) );
              } else {
                 // other browser 일때 
                 $("#formFileMultiple").val("");
              }  
               alert("최대 3장까지 업로드 할 수 있습니다."); 
               return;
               }
             else{ //파일이 3개이하이면 미리보기 가능
             
             //privew 영역 사이즈 설정
             document.getElementById('preview').style.cssText  = 'width:600px; height:200px; margin-top:50px; margin-left:20%;'; 
                
             filesArr.forEach(function(f){  
               console.log('들어옴'+f); 
                
                //이미지 파일만 미리보기 가능
               if(!f.type.match("image/.*")){
                      alert("이미지 확장자만 업로드 가능합니다.");
                       return;
                };
               
                      
               var reader = new FileReader();
                reader.onload = function(e) {
                   document.getElementById('preview').innerHTML += '<img width="30%" height="90%" src="' + e.target.result + '">';
                }
                reader.readAsDataURL(f); 
              
                
                
             });   //foreach
             
             }

         }
   </script>
   
   
   
  
   
   
</body>
</html>
    