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
            	<h1 class="page-header">Board Register</h1>
        	</div>
    	<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	
	
	  <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        	Board Register
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <form method="post">
                            	<div class="form-group">
                            		<lavel>Title</lavel>
                            		<input class="form-control" name="title">
                            	</div>
                            	<div class="form-group">
                            		<lavel>Content</lavel>
                            		<textarea class="form-control" rows="10" name="content"></textarea>
                            	</div>
                            	<div>
                            		<lavel>Writer</lavel>
                            		<input class="form-control" name="writer">
                            	</div>
                            	<button class="btn btn-default">Submit</button>
                            	<button type="reset" class="btn btn-default">Reset</button>
                            </form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>




<%@ include file="../include/footer.jsp" %>