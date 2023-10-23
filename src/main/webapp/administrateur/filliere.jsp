<!DOCTYPE html>
<%@page import="dao.DepartementDao"%>
<%@page import="entities.Departement"%>
<%@page import="java.util.List"%>
<%@page import="dao.FilliereDao"%>
<%@page import="entities.Filliere"%>
<%
DepartementDao ddao = new DepartementDao();
List<Departement> ds= ddao.tousdept();
FilliereDao fdao = new FilliereDao();
List<Filliere> fs= fdao.tousfill();  %>
<html>
	<head>
		<title></title>
		<!--<script src="jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
		<script src="jquery.dataTables.min.js"></script>
		<script src="angular-datatables.min.js"></script>-->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="bootstrap.min.js"></script>
		<link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="../Responbsable/style2.css">
		<link rel="stylesheet" href="datatables.bootstrap.css">
        <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	</head>
	<body>
         <jsp:include page="../menu.jsp" />
		<div class="container" ng-init="fetchData()">

			<div align="right">
				<button type="button" name="" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ajoutefiliere" style="position:absolute;left:17%;top:30%;">Ajouter Filiere</button>
			</div>
			<br />
			<div class="table-responsive" style="overflow-x: unset;width:80%;position:absolute;left:17%;top:40%;">
				<table dt-options="vm.dtOptions" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>ID Filiere</th>
                        	<th>NOM Filiere</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<%for(Filliere f:fs) {%>	
						<tr>
							<td><%=f.getId() %></td>
							<td><%=f.getNom() %></td>
							<td>
								<button type="button" class="btn btn-warning btn-xs" data-bs-toggle="modal" data-bs-target="#modifiefiliere" data-bs-whatever="<%=f.getId() %>">Modifier</button>
								<a href="../SupprimerFilliere?id=<%=f.getId() %>">
								<button type="button"  class="btn btn-danger btn-xs">Supprimer</button>
								</a>
							</td>
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
		</div>
		
		
		<!-- POP UP Ajouter Filliere  -->	
		<div class="modal" id="ajoutefiliere">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ajouter Filliere</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="../AjouterFilliere" method="post">
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">ID Filiere</label>
								<input type="text" class="form-control" id="recipient-name" name="id">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">NOM Filiere</label>
								<input type="text" class="form-control" id="recipient-name" name="nom">
							</div>
							<div class="form-group">
								<div class="form-group">
									<label for="message-text" class="col-form-label">Departement</label>
									<select style="height: 100%;" name="dept_id" ng-model="id_depa" id="" class="form-control" onchange="yesnoCheck(this);">
										<%for(Departement d:ds){ %>
											<option name="dept_id" value=<%=d.getId()%>><%=d.getNom() %></option>
											<%} %>
									</select>
								</div>
						 	</div>
						 	<div class="modal-footer">
								<button type="button"  class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
								<button class="btn btn-success" name="add" type="submit" value="ajouter">Ajouter</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<!-- POP UP Modifier Filliere  -->
		<div class="modal" id="modifiefiliere">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modifier Filliere</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form>
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">ID Filiere</label>
								<input type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">NOM Filiere</label>
								<input type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<div class="form-group">
									<label for="message-text" class="col-form-label">Departement</label>
									<select style="height: 100%;" name="dept_id" ng-model="id_depa" id="" class="form-control" onchange="yesnoCheck(this);">
										<%for(Departement d:ds){ %>
											<option name="dept_id" value=<%=d.getId()%>><%=d.getNom() %></option>
											<%} %>
									</select>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button"  class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
								<button class="btn btn-success" name="add" type="submit" value="oneadd">Ajouter</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>	
</body>
</html>