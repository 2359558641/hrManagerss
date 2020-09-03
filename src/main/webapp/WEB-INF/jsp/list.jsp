<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2020/8/8
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/statics/jquery-1.10.2.js"></script>
<script>
    $(function () {
        $("tr:odd").css("background-color","green");
        $("tr:even").css("background-color","blue");
    })
</script>
<script>
    function del(id) {
       var flag= confirm("确定删除吗");
       if(flag){
           window.location.href="<%=request.getContextPath()%>/hr/del?id="+id;
       }

</script>
<body>
<form action="<%=request.getContextPath()%>/hr/listadd">
    <table border="1">
        <tr>
            <td colspan="7" align="center">
                人员列表
            </td>
        </tr>
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>等级</td>
            <td>部门</td>
            <td>操作</td>

        </tr>
        <c:forEach var="f" items="${getlist}">
            <tr>
                <td>${f.id}</td>
                <td>${f.name}</td>
                <td>
                    <c:if test="${f.gender==0}">女</c:if>
                    <c:if test="${f.gender==1}">男</c:if>
                </td>
                <td>${f.age}</td>
                <td>
                    <c:if test="${f.rank==1}">1级</c:if>
                    <c:if test="${f.rank==2}">2级</c:if>
                    <c:if test="${f.rank==3}">3级</c:if>
                    <c:if test="${f.rank==4}">4级</c:if>
                    <c:if test="${f.rank==5}">5级</c:if>
                </td>
                <td>${f.department}</td>
                <td>
                    <a href="#" onclick="del(${f.id})">删除</a>
                    <a href="<%=request.getContextPath()%>/hr/view?id=${f.id}">修改</a>
                </td>

            </tr>
        </c:forEach>
    </table>
    <div>
        <a href="<%=request.getContextPath()%>/hr/getlist?curPage=1">首页</a>
        <a href="<%=request.getContextPath()%>/hr/getlist?curPage=${curPage-1}">上一页</a>
        <a href="<%=request.getContextPath()%>/hr/getlist?curPage=${curPage+1}">下一页</a>
        <a href="<%=request.getContextPath()%>/hr/getlist?curPage=${pages}">末页</a>
    </div>
    <input type="submit"value="添加成员">
</form>
</body>
</html>
