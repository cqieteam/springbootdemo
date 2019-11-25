<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/Head.jsp" %>

<!DOCTYPE html>
<html lang="zh" xmlns:v-bind="http://www.w3.org/1999/xhtml">

<head>
    <title>Bootstrap V3 template</title>
</head>
<body>
<h1>Hello, world!</h1>

</body>
</html>


<!-- 标准的按钮 -->
<button type="button" class="btn btn-default">默认按钮</button>
<!-- 提供额外的视觉效果，标识一组按钮中的原始动作 -->
<button type="button" class="btn btn-primary">原始按钮</button>
<!-- 表示一个成功的或积极的动作 -->
<button type="button" class="btn btn-success">成功按钮</button>
<!-- 信息警告消息的上下文按钮 -->
<button type="button" class="btn btn-info">信息按钮</button>
<!-- 表示应谨慎采取的动作 -->
<button type="button" class="btn btn-warning">警告按钮</button>
<!-- 表示一个危险的或潜在的负面动作 -->
<button type="button" class="btn btn-danger">危险按钮</button>
<!-- 并不强调是一个按钮，看起来像一个链接，但同时保持按钮的行为 -->
<button type="button" class="btn btn-link">链接按钮</button>

<a href="${ctx}/test/testData/save" id="dataGridAddRowBtn" class="btn btn-default"><i
        class="fa fa-plus"></i>${ctx}增行</a>
<table class="table">
    <tbody>
    <c:forEach items="${students}" var="student">

        <tr>
            <td>${student.no}</td>
            <td>${student.name}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div id="app">
    {{ message }}
</div>
<div id="app-2">
  <span v-bind:title="message">
    鼠标悬停几秒钟查看此处动态绑定的提示信息！
  </span>
</div>

<script>
    $(function () {
      //  alert("${ctx}");

    });
    var app = new Vue({
        el: '#app',
        data: {
            message: 'Hello Vue!'
        }
    })
    var app2 = new Vue({
        el: '#app-2',
        data: {
            message: '页面加${ctx}载于${testData.testAreaName} ' + new Date().toLocaleString()
        }
    })

</script>
