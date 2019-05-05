<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<input type="file" id="file" />

<button id="upload">上传</button>

<script type="text/javascript">
    window.onload = function () {
        console.log('加载完毕');
        const $btn = document.querySelector("#upload");
        console.log($btn)

    }

</script>
</body>
</html>
