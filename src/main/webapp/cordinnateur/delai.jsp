<!DOCTYPE html>
<html>
	<head>
		<title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="style2.css">

		<link rel="stylesheet" href="datatables.bootstrap.css">
        <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	</head>
 
  
	<body>
	    <jsp:include page="../menu.jsp" /> 
    <div class="content2" style="position: absolute;left:25%;top:25%;">
     <div class="container qsd" >
      <h2>Determiner la date finale pour deposer les rapports</h2>
    <div class="card-body">
      <form action="../AjouterDelai" method="post">
       <div class="form-group">
     <label for="example-date-input" class="col-5 col-form-label" style="font-size: 100%;">Delai de depot Rapport PFE</label>
     <input class="form-control" type="date" value="" id="" name="date1">
       </div>   
       <br/>
        <div class="form-group">
          <button type="submit" name='save' class="btn btn-info" value="save">sauvegarder</button>
        </div>
      </form>
      </div>
    </div>
</div>

	</body>
</html>  

