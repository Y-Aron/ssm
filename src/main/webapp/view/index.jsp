
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p> 测试基本类型的请求参数 </p>
<form action="/ssm/test/baseParams" method="post">
    <label>
        姓名：<input type="text" name="name" value="Y-先生" />
    </label> <br>

    <label>
        年龄：<input type="number" name="age" value="21" />
    </label> <br>

    <label>
        角色：<input type="checkbox" name="role" value="r1" checked/>
        <input type="checkbox" name="role" value="r2" />
        <input type="checkbox" name="role" value="r3" />
    </label> <br>
    <input type="submit" value="提交">
</form>
<hr>

<p> 测试bean对象的请求参数 </p>
<form action="/ssm/test/beanParams" method="post">

    <label>
        姓名：<input type="text" name="name" value="admin">
    </label> <br>

    <label>
        昵称：<input type="text" name="nickname" value="Y-先生">
    </label> <br>
    <label>
        简介：<input type="text" name="desc" value="一名佛性少年！">
    </label> <br>

    <label>
        生日：<input type="text" name="birthday" value="2018-02-17 10:33:23">
    </label> <br>

    <input type="submit" value="提交">
</form>

<hr>

<p> 测试bean对象列表的请求参数 </p>
<form action="/ssm/test/beanList" method="post">

    <label>
        姓名：<input type="text" name="users[0].name" value="admin1">
        姓名：<input type="text" name="users[1].name" value="admin2">
        姓名：<input type="text" name="users[2].name" value="admin3">
    </label> <br>

    <label>
        昵称：<input type="text" name="users[0].nickname" value="Y-先生1">
        昵称：<input type="text" name="users[1].nickname" value="Y-先生2">
        昵称：<input type="text" name="users[2].nickname" value="Y-先生3">
    </label> <br>
    <label>
        简介：<input type="text" name="users[0].desc" value="一名佛性少年1！">
        简介：<input type="text" name="users[1].desc" value="一名佛性少年2！">
        简介：<input type="text" name="users[2].desc" value="一名佛性少年3！">
    </label> <br>

    <input type="submit" value="提交">
</form>
<hr>

<p> 测试Converter转换器 </p>
<form action="/ssm/test/converter" method="post">
    <label>
        用户bean：<input type="text" name="user" value="admin|Y-先生|2018-12-02 10:32:45" />
    </label> <br>
    <input type="submit" value="提交">
</form>
</body>
</html>
