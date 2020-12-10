<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 

<%@ include file="../includes/header.jsp" %>

        <div class="container-fluid">
		  <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h4 class="m-0 font-weight-bold text-primary">기사보기</h4>
            </div>
            <div class="card-body">
          		<div class="form-group">
          			<label>번호</label>
          			<input class="form-control" value="${board.bno }" name="bno" readonly>
          		</div>
          		<div class="form-group">
          			<label>제목</label>
          			<input class="form-control" value="${board.title }" name="title" readonly>
          		</div>
          		<div class="form-group">
	           		<label>내용</label>
	           		<textarea class="form-control" rows="10" name="content" readonly>${board.content }</textarea>
	           	</div>
	           	<div class="form-group">
	           		<label>아이디</label>
	           		<input class="form-control" value="${board.writer }" name="writer" readonly>
	           	</div>
	           	
             
	              <div class="row">
			      	<div class="col-lg-12">
			      		<div class="card shadow mb-4">
			      			<div class="card-header py-3">
			      				<h4 class="m-0 font-weight-bold text-primary">첨부파일</h4>
			      			</div>
			      			<div class="card-body">
			      				<div class="uploadResult">
			      					<ul></ul>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
			      </div>
			 
             
				    <form id='operForm' action="/board/modify" method="get">
						<input type="hidden" id="bno" name="bno" value="${board.bno}">
						<input type="hidden" name="pageNum" value="${cri.pageNum}">
						<input type="hidden" name="amount" value="${cri.amount}"> 
						<input type="hidden" name="type" value="${cri.type}">
  						<input type="hidden" name="keyword" value="${cri.keyword}">
  						<input type="hidden" name="writer" value="${board.writer}">
						
						<sec:authentication property='principal' var="pinfo"/>
						<sec:authorize access="isAuthenticated()">
							<c:if test="${pinfo.username eq board.writer }">
								<button data-oper="modify" class="btn btn-primary btn-sm">수정</button>
							</c:if>
						</sec:authorize>
						<button data-oper="list" class="btn btn-primary btn-sm">나가기</button>
				    </form>
            	
            </div>
          </div>

			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<i class="fa fa-comments fa-fw"></i> 댓글
					<sec:authentication property='principal' var="pinfo"/>
					<sec:authorize access="isAuthenticated()">
							<button id="addReplyBtn" class="btn btn-primary btn-sm float-right">댓글 작성</button>
					</sec:authorize>				  
				</div>
				<div class="card-body">
					<ul class="chat list-group"></ul>
				</div>
				
				<div class="card-footer"></div>
				
			</div>

			<div class="modal" id="myModal">
			  <div class="modal-dialog">
			    <div class="modal-content">
			
			      <div class="modal-header">
			        <h4 class="modal-title">기사제목 추천</h4>
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			      </div>
			
			      <div class="modal-body">
				      <div class="form-group">
				      	<label>댓글</label>
				      	<input class="form-control" name="reply" value="New Reply!!!">
				      </div>
				      <div class="form-group">
				      	<label>아이디</label>
				      	<input class="form-control" name="replyer" value="Replyer" readonly>
				      </div>
				      <div class="form-group">
				      	<label>날짜</label>
				      	<input class="form-control" name="replyDate" value=''>
				      </div>  
			      </div>          
			
			      <div class="modal-footer">
			        <button id="modalModBtn" type="button" class="btn btn-warning">수정</button>
			        <button id="modalRemoveBtn" type="button" class="btn btn-danger">삭제</button>
			        <button id="modalRegisterBtn" type="button" class="btn btn-primary">작성</button>
			        
			      </div>
			    </div>
			  </div>
			</div>
			
			
        </div>
      
      <div class='bigPictureWrapper'>
			<div class='bigPicture'></div>
		</div>

<%@ include file="../includes/footer.jsp" %>

<script src="/resources/js/reply.js"></script>

<style>
   .uploadResult {
       width: 100%;
   }

   .uploadResult ul {
       display: flex;
       flex-flow: row;
       justify-content: center;
       align-items: center;
   }

   .uploadResult ul li {
       list-style: none;
       padding: 10px;
   }

   .uploadResult ul li img {
       width: 100px;
   }
   
   .uploadResult ul li span {color: dimgray;}
   
   .bigPictureWrapper {
        cursor: pointer;
   		position: fixed;
   		display: none;
   		justify-content: center;
   		align-items: center;
   		top: 0%;
   		width: 100%;
   		height: 100%;
   		z-index: 100;
   		background-color: rgba(0,0,0,0.8);
   }
   .bigPicture {
   		position: relative;
   		display: flex;
   		justify-content: center;
   		align-items: center;
   }
   .bigPicture img {width: 600px;}
</style>



<script> 
	$(document).ready(function() {
		
		$(".uploadResult").on("click", "li", function(e){
			console.log("view image");
			var liObj = $(this);
			var path = encodeURIComponent(liObj.data("path")+"/"+liObj.data("uuid")+"_"+liObj.data("filename"));

			if (liObj.data("type")) {
				showImage(path.replace(new RegExp(/\\/g), "/"));
			} else {
				self.location = "/download?fileName=" + path
			}
		});
		
		function showImage(fileCallPath){
			alert(fileCallPath);
			$(".bigPictureWrapper").css("display","flex").show();
			$(".bigPicture")
				.html("<img src='/display?fileName="+fileCallPath+"'>")
				.animate({width:'100%', height:'100%'}, 1000);
		}

        $(".bigPictureWrapper").on("click", function(e){
            $(".bigPicture").animate({width:'0%', height:'0%'}, 1000);
            setTimeout(function(){
                $(".bigPictureWrapper").hide();
            }, 1000);
        });
        
        
        
		(function(){
		    var bno = "${board.bno}";
		    $.getJSON("/board/getAttachList", {bno: bno}, function(arr){
		        console.log(arr);
		       
		        var str="";
		        
				$(arr).each(function(i,attach) {
					if (attach.fileType) {
						var fileCallPath = encodeURIComponent(attach.uploadPath + "/s_" + attach.uuid + "_" + attach.fileName);
						str += "<li style='cursor:pointer' data-path='"+attach.uploadPath+"'";
						str += " data-uuid='"+attach.uuid+"' data-fileName='"+attach.fileName+"'data-type='"+attach.fileType+"'>";
						str += " <div>";
						str += "<img src='/display?fileName=" + fileCallPath + "'>";
						str += "</div>";
						str += "</li>";
					} else {
						var fileCallPath = encodeURIComponent(attach.uploadPath + "/" + attach.uuid + "_" + attach.fileName);
						var fileLink = fileCallPath.replace(new RegExp(/\\/g), "/");
						str += "<li style='cursor:pointer' data-path='"+attach.uploadPath+"'";
						str += " data-uuid='"+attach.uuid+"' data-fileName='"+attach.fileName+"'data-type='"+attach.fileType+"'>";
						str += "<span> " + attach.fileName + " </span>";
						str += " <div>";
						str += "<img src='/resources/img/attachment.png'></a>";
						str += "</div>";
						str += "</li>";
					}
				});
		        $(".uploadResult ul").html(str);
		    });
		})();
		
		
		var pageNum = 1;
		var replyPageFooter = $(".card-footer");  
		
		function showReplyPage(replyCnt) {
			var endNum = Math.ceil(pageNum / 10.0) * 10; 
			var startNum = endNum - 9;  
			
			var prev = startNum != 1;  
			var next = false;  
			
			if (endNum * 10 >= replyCnt) {
				endNum = Math.ceil(replyCnt/10.0);
			}
			
			if (endNum * 10 < replyCnt) {
				next = true;
			}
			
			var str = "<ul class='pagination float-right'>";
			
			if (prev) {
				str += "<li class='page-item'>";
				str += "	<a class='page-link' href='"+(startNum -1)+"'>";
				str += 			Previous;
				str += "	</a>";
				str += "</li>";
			}

			for (var i = startNum; i <= endNum; i++) {
				var active = pageNum == i ? "active" : "";
				
				str += "<li class='page-item "+active+" '>";
				str += "	<a class='page-link' href='"+i+"'>";
				str += 			i;
				str += "	</a>";
				str += "</li>";
			}
			
			if (next) {
				str += "<li class='page-item'>";
				str += "	<a class='page-link' href='"+(endNum +1)+"'>";
				str += 			Next;
				str += "	</a>";
				str += "</li>";
			}
			
			str += "</ul></div>";
			
			console.log(str);
			
			replyPageFooter.html(str);
		}

		
		replyPageFooter.on("click","li a", function(e) {
			e.preventDefault();  
			console.log("page click");
			
			var targetPageNum = $(this).attr("href");
			
			console.log("targetPageNum: " + targetPageNum);
			
			pageNum = targetPageNum;
			
			showList(pageNum);
		});

		
		
		var bnoValue = "${board.bno}";
		var replyUL = $(".chat");
		
		showList(1); 

		function showList(page) {
			replyService.getList({bno:bnoValue, page:page||1}, function(replyCnt, list){

				if (page == -1) {
					pageNum = Math.ceil(replyCnt/10.0);
					showList(pageNum);
					return;
				}
				
				var str="";
				
				if (list == null || list.length == 0) {
					replyUL.html("");
					return;
				}
				for (var i = 0, len = list.length||0; i < len; i++) {
					console.log(list[i]);
					str+="<li class = 'list-group-item' style='cursor:pointer' data-rno='"+list[i].rno+"'>";
					str+="	<div>";
					str+="		<div class = 'header'>";
					str+="			<strong class = 'text-primary'>";
					str+=					list[i].replyer;
					str+="			</strong>";
					str+="			<small class='float-right text-muted'>";
					str+=					replyService.displayTime(list[i].replyDate);
					str+="			</small>";
					str+="		</div>";
					str+="		<p>" + list[i].reply + "</p>";
					str+="	</div>";
					str+="</li>";
				}
				replyUL.html(str);  
				showReplyPage(replyCnt);
			});
		}

		
		var modal = $("#myModal");   
		var modalInputReply = modal.find("input[name='reply']");   
		var modalInputReplyer = modal.find("input[name='replyer']");   
		var modalInputReplyDate = modal.find("input[name='replyDate']");   
		
		var modalModBtn = $("#modalModBtn");   
		var modalRemoveBtn = $("#modalRemoveBtn");   
		var modalRegisterBtn = $("#modalRegisterBtn");   
		
		var replyer = null;
		<sec:authorize access = "isAuthenticated()">
			replyer = '<sec:authentication property="principal.username"/>';
		</sec:authorize>
		
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		
		
	
		$("#addReplyBtn").on("click", function(e) {
			modal.find("input").val("");   
			modal.find("input[name='replyer']").val(replyer);
			modalInputReplyDate.closest("div").hide();   
			modal.find("button[id != 'modalCloseBtn']").hide();   
			
			modalRegisterBtn.show();  
			$("#myModal").modal("show");  
		});
		
		
		
		$(document).ajaxSend(function(e, xhr, options){
			xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		});
		
		
		modalRegisterBtn.on("click", function(e){
			var reply = {
					reply: modalInputReply.val(),
					replyer: modalInputReplyer.val(),
					bno: bnoValue
			};
			
			replyService.add(reply, function(result){
				alert(result); 
				modal.find("input").val("");  
				modal.modal("hide");  
				
				showList(-1); 
			});
		});
		
		
		replyService.getList({bno:bnoValue, page:1}, function(list){
			for (var i = 0, len = list.length||0; i < len; i++) {
				console.log(list[i]);
			}
		});


		$(".chat").on("click", "li", function(e){
		  
			var rno = $(this).data("rno"); 
			
			replyService.get(rno, function(reply){
		  
				modalInputReply.val(reply.reply);
				modalInputReplyer.val(reply.replyer);
				modalInputReplyDate.val(replyService.displayTime(reply.replyDate))
					.attr("readonly","readonly");
				modal.data("rno", reply.rno);
				
				modal.find("button[id !='modalCloseBtn']").hide();
				modalModBtn.show();  
				modalRemoveBtn.show();  
				
				$("#myModal").modal("show"); 
				  
		 	});
		});
		

		modalModBtn.on("click", function(e)	{
			
			var originalReplyer = modalInputReplyer.val();
			
			var reply = {
					rno: modal.data("rno"), 
					reply: modalInputReply.val(),
					replyer: originalReplyer					
			};
			
			if (!replyer) {
				alert("로그인 후 수정이 가능합니다.");
				$("#myModal").modal("hide");
				return;
			}
			
			console.log("Original Replyer: " + originalReplyer);  
			
			if (replyer != originalReplyer) {
				alert("자신이 작성한 댓글만 수정이 가능합니다.");
				$("#myModal").modal("hide");
				return;
			}
			
			replyService.update(reply, function(result) {
				alert(result);
				$("#myModal").modal("hide");
				showList(pageNum);
			});
		});
		
		
		modalRemoveBtn.on("click", function(e) {
			
			var rno = modal.data("rno");
			
			console.log("RNO: " + rno);
			console.log("REPLYER: " + replyer);
			
			if (!replyer) {
				alert("로그인 후 삭제가 가능합니다.");
				$("#myModal").modal("hide");
				return;
			}
			
			var originalReplyer = modalInputReplyer.val();
			console.log("Original Replyer: " + originalReplyer);  
			
			if (replyer != originalReplyer) {
				alert("자신이 작성한 댓글만 삭제가 가능합니다.");
				$("#myModal").modal("hide");
				return;
			}
			
			replyService.remove(rno, originalReplyer, function(result) {
				alert(result);
				$("#myModal").modal("hide");
				showList(pageNum);
			});
		});
		
		
		var operForm = $("#operForm");
		$("button[data-oper='modify']").on("click", function(e){
			operForm.attr("action", "/board/modify").submit();
		});
		
		$("button[data-oper='list']").on("click", function(e){
			operForm.find("#bno").remove();
			operForm.attr("action", "/board/list")
			operForm.submit();
		});
	});
</script>