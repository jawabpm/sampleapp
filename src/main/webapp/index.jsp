<html>
<head>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Arun's Calculator version:1.0</a>
    </div>
    <ul class="nav navbar-nav pull-right">      
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>

<div class="row">
<div class="col-sm-4">
</div>
<div class="col-sm-4">
<form class="form-horizontal">
  <div class="form-group">
    <label class="control-label col-sm-4" for="input1" >Number 1:</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="input1">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="input2" >Number 2:</label>
    <div class="col-sm-8"> 
      <input type="text" class="form-control" id="input2">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-4 col-sm-8">
      <button type="button" id="add" class="btn btn-success btn-block">ADD</button>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="result">Result:</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="result">
    </div>
  </div>
</form>
</div>
</div>

<script>
	$(document).ready(function() {
		$('#result').val('');
		$('#input1').val('');
		$('#input2').val('');
	  $('#add').click(function() {		
		var a = parseInt($('#input1').val());
		var b = parseInt($('#input2').val());
		var c = a+b;
		$('#result').val(c);		
	  });
	});
</script>
</body>
</html>
