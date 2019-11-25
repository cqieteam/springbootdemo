<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-11-25
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/Head.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form style="margin-left:500px;margin-top:200px;" action="${ctx}/student/list">
    <div class="form-group">
        <label for="user" stype="display:inline;">账户：</label>
        <input type="text" class="form-control" id="user" style="display:inline;width:200px;" autocomplete="off"/>
    </div>
    <div class="form-group">
        <label for="password" style="display:inline;">密码：</label>
        <input type="text" class="form-control" id="password" style="display:inline;width:200px;" autocomplete="off"/>
    </div>
    <button type="submit" class="btn btn-primary" >登录</button>
</form>


</body>
</html>
