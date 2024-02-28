<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../include/header.jsp" %>

	<style>
		.btn{background:orange;border:orange !important;}
	</style>

	<div class="row">
        	<div class="col-lg-12">
            	<h1 class="page-header">Board</h1>
        	</div>
    	<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	
	
	  <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        	Modify
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        
                        <form action="/board/modify" method="post">
                        	<input type="hidden" id="pageNum" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
                   			<input type="hidden" id="amount" name="amount" value='<c:out value="${cri.amount}"/>'>
                   			<input type="hidden" id="keyword" name="keyword" value='<c:out value="${cri.keyword}"/>'>
                   			<input type="hidden" id="type" name="type" value='<c:out value="${cri.type}"/>'>
                        
                        	<div class="form-group">
                            	<lavel>No.</lavel>
                            	<input class="form-control" name="bno" value='<c:out value="${board.bno}"/>' readonly>
                            </div>                        
                            <div class="form-group">
                            	<lavel>Title</lavel>
                            	<input class="form-control" name="title" value='<c:out value="${board.title}"/>'>
                            </div>
                            <div class="form-group">
                            	<lavel>Content</lavel>
                            	<textarea class="form-control" rows="10" name="content"><c:out value="${board.content}"/></textarea>
                            </div>
                            <div>
                            	<lavel>Writer</lavel>
                            	<input class="form-control" name="writer" value='<c:out value="${board.writer}"/>'>
                            </div>
                            <div class="form-group">
                            	<label>RegdDate</label>
                            	<input class="form-control" name="regDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate}"/>' readonly>
                            </div>
                            <div class="form-group">
	                   			<label>updateDate</label>
	                   		<input class="form-control" name="updateDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updateDate}" />' readonly>
	                   		</div>
                            
                            <button data-oper="modify" class="btn btn-default">Modify</button> <!-- 전송 /// 컨트롤 쉬프트 / 하면 이거 나옴-->
                            <button data-oper="remove" class="btn btn-default">Remove</button>
                            <button data-oper="list" class="btn btn-default">List</button>
                            	
                            </form>
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            
            <script>
            	$(document).ready(function(){
            		var formObj=$("form"); // form 태그 찾기
            		$("button").on("click",function(e){
            			e.preventDefault(); // submit 방지
            			
            			var operation=$(this).data("oper"); // event 가 발생한 버튼의 data-oper속성의 값을 구하기
            			if(operation==="remove"){
            				formObj.attr("action","/board/remove"); // 삭제처리
            			}else if(operation==="list"){
            				/* formObj.attr("action","/board/list"); // 목록처리
            				formObj.attr("method","get")	// get방식으로 변경 */
            				// 위 두줄을 한줄에 한번에
            				formObj.attr("action","/board/list").attr("method","get");; //목록으로
            				
            				
            				// hidden 태그를 복제해 둔다.
            				var pageNumTag=$("input[name='pageNum']").clone();
            				var amountTag=$("input[name='amount']").clone();
            				var keywordTag=$("input[name='keyword']").clone();
            				var typeTag=$("input[name='type']").clone();
            				
            				// form 태그의 모든 태그를 삭제한다.
            				formObj.empty();
            				
            				// form 태그에 복제해둔 hidden 태그를 다시 추가
            				formObj.append(pageNumTag);
            				formObj.append(amountTag);
            				formObj.append(keywordTag);
            				formObj.append(typeTag);
            				
            			}
            			
            			formObj.submit(); // 전송
            		});
            	});
            </script>




<%@ include file="../include/footer.jsp" %>