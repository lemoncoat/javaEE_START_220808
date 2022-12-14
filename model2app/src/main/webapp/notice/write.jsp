<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script>
$(function(){
	$("button").click(function(){
		//서버에 요청
		$("form").attr({
			method:"post",
			action:"/notice/regist.do"
		});
		$("form").submit();
	});
});

</script>
</head>
<body>

<div class="container">
  <h2>글 쓰기</h2>
  <form  class="was-validated">
    <div class="form-group">
      <input type="text" class="form-control"  placeholder="제목을 입력하세요..." name="title" required>
    </div>
    
    <div class="form-group">
      <input type="text" class="form-control" placeholder="작성자를 입력하세요.." name="writer" required>
    </div>
    
    <div class="form-group">
		<textarea class="form-control" placeholder= "내용을 입력해주세요" name="content" required></textarea>
    </div>
    <button type="button" class="btn btn-primary">글 작성</button>
  </form>
</div>

</body>
</html>
