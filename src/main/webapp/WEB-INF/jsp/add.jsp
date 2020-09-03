<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2020/8/8
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript" src="<%=request.getContextPath()%>/statics/jquery-1.10.2.js"></script>
<script type="text/javascript">
    $(function () {
        $("tr:odd").css("background-color","green");
        $("tr:even").css("background-color","blue");
    })

            </script>
<form action="<%=request.getContextPath()%>/hr/add" method="post" onsubmit="return checkAll()">
    <table>
        <tr>
            <td align="center" colspan="2">添加成员</td>
        </tr>
        <tr>
            <td>姓名:</td>  <td>
            <input type="text" name="name" id="name">*
        </td>
        </tr>
        <tr>
            <td>性别：</td>

            <td>
                <select name="gender">
                    <option value="0">请选择</option>
<option value="0">女</option>
<option value="1">男</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>年龄:</td>

            <td>
                <input type="text" name="age" id="age">
            </td>
        </tr>
        <tr>
            <td>等级:</td>

            <td>
                <select name="rank">
                    <option value="0">请选择</option>
                    <option value="1">1级</option>
                     <option value="2">2级</option>
             <option value="3">3级</option>
          <option value="4">4级</option>
<option value="5">5级</option>
                </select>
            </td>
        <tr>
     <td>部门:</td>
        <td>
            <select name="department">
                <option value="0">请选择</option>
                <option value="支持部">支持部</option>
                <option value="工程质量部">工程质量部</option>
                <option value="开发部">开发部</option>
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
<script type="text/javascript">
    function checkAll(){
        if(checkName()&&checkAge()){

            return true;
        }else{

            return false;
        }
    }
    function checkName(){
        var name=$("#name").val();
        if(name!=""&&name!=null){
            return true;
        }else{
            alert("姓名不能为空");
            return false;
        }
    }
    function checkAge(){
        var age=$("#age").val();
        if(age!=""&&age!=null){
            return true;
        }else{
            alert("年龄不能为空");
            return false;
        }
    }

</script>
</body>
</html>
