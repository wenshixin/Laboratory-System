<%--
  Created by eclipse.
  User: xzp
  Date: 2018/5/14
  Time: 22.55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加设备</title>
    <link href="resources/plugins/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container-fluid">
    <div class="col-lg-4 col-md-6 col-sm-8 col-xm-12">
        <form class="form-horizontal" action="labequipment_add.action" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label class="control-label">设备名称：</label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <div class="form-group">
                <label class="control-label">设备状态：</label>
                <select name="status" class="form-control" required>
  					<option value="正常工作">正常工作</option>
  					<option value="缺失">缺失</option>
  					<option value="损坏">损坏</option>
 				 	<option value="需要维护">需要维护</option>
				</select>
            </div>
            <div class="form-group">
                <label class="control-label">设备介绍：</label>
                <input type="text" class="form-control" name="description" required>
            </div>
            <div class="form-group">
                <label class="control-label">添加图片：</label>
                <input type="file" id="img" name="cover">
            </div>
            <div class="form-group">
                <label class="control-label">设备所在实验室：</label>
                <select name="labId" class="form-control">
					<s:iterator value="#request.labInfoList">
						<option value="${id}">${title}</option>
					</s:iterator>
				</select>
            </div>
            <div class="form-group">
                <label class="control-label">录入时间：</label>
                <input type="date" class="form-control" name="inTime"  required> 
                
            </div>
            <div class="form-inline">
                <input type="submit" class="btn btn-primary" value="添加设备" >
                <a class="btn btn-primary" href="javascript:history.go(-1);">返回</a>
            </div>
            
        </form>
    </div>
</div>
</body>
</html>
