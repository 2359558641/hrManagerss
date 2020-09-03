<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2020/8/8
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/hr/upd" method="post" onsubmit="return checkAll()">
    <input type="hidden" name="id" value="${id}">
    <table border="1">
        <tr>
            <td align="center" colspan="2">修改成员</td>
        </tr>
        <tr>
            <td>姓名:</td>  <td>
            <input type="text" name="name" id="name" value="${del.name}">*
        </td>
        </tr>
        <tr>
            <td>性别：</td>

            <td>
                <select name="gender">
                    <option value="0">请选择</option>
                    <option value="0"<c:if test="${del.gender==0}">selected</c:if>>女</option>
                    <option value="1"<c:if test="${del.gender==1}">selected</c:if>>男</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>年龄:</td>

            <td>
                <input type="text" name="age" id="age" value="${del.age}">
            </td>
        </tr>
        <tr>
            <td>等级:</td>

            <td>
                <select name="rank">
                    <option value="0">请选择</option>
                    <option value="1" <c:if test="${del.rank==1}">selected</c:if>>1级</option>
                    <option value="2"<c:if test="${del.rank==2}">selected</c:if>>2级</option>
                    <option value="3"<c:if test="${del.rank==3}">selected</c:if>>3级</option>
                    <option value="4"<c:if test="${del.rank==4}">selected</c:if>>4级</option>
                    <option value="5"<c:if test="${del.rank==5}">selected</c:if>>5级</option>
                </select>
            </td>
        <tr>
            <td>部门:</td>
            <td>
                <select name="department">
                    <option value="0">请选择</option>

                    <option value="支持部" <c:if test="${del.department=='支持部'}">selected</c:if>>支持部</option>
                    <option value="工程质量部" <c:if test="${del.department=='工程质量部'}">selected</c:if>>工程质量部</option>
                    <option value="开发部" <c:if test="${del.department=='开发部'}">selected</c:if>>开发部</option>
                </select>
            </td>
        </tr>
        </tr>
        <tr>
            <td>
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>

</form>
</body>
</html>
