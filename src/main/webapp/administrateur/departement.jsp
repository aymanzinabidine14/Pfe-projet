<%@page import="dao.DepartementDao"%>
<%@page import="java.util.List"%>
<%@page import="entities.Departement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
DepartementDao ddao = new DepartementDao();
List<Departement> ds= ddao.tousdept();%>


<!DOCTYPE html>
<html>
<head>

       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="../assets/bootstrap.min.js"></script>
		<link rel="stylesheet" href="../assets/bootstrap.min.css">
		<link rel="stylesheet" href="../assets/datatables.bootstrap.css">
</head>
	<body>
		<jsp:include page="../menu.jsp" />
		<div class="container">
			<div align="right">
				<button type="button" name="" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ajoutedepartement" style="position:absolute;left:17%;top:30%;">Ajouter un Departement</button>
			</div>
			<br />
			<div class="table-responsive" style="overflow-x: unset;width:80%;position:absolute;left:17%;top:40%;">
				<table dt-options="vm.dtOptions" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>ID DEPARTEMENT</th>
               	        	<th>NOM DEPARTEMENT</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<%for(Departement d:ds) {%>	
						<tr>
							<td><%=d.getId() %></td>
							<td><%=d.getNom() %></td>
							<td>
								<button type="button" class="btn btn-warning btn-xs" data-bs-toggle="modal" data-bs-target="#updatedepartement" data-bs-whatever="<%=d.getId() %>">Modifier</button>
								<a href="../SupprimerDepartement?id=<%=d.getId() %>">
								<button type="button"  class="btn btn-danger btn-xs">Supprimer</button>
								</a>
							</td>
						</tr>
						<%} %> 
					</tbody>
				</table>
			</div>
		</div>
		
		
		<!-- POP UP Ajouter DEPARTEMENT  -->
		<div  class="modal" id="ajoutedepartement">
		 	<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ajouter DEPARTEMENT</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="../AjouterDepartement" method="post">
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">ID DEPARTEMENT</label>
								<input type="text" class="form-control" id="recipient-name" name="id">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">NOM DEPARTEMENT</label>
								<input type="text" class="form-control" id="recipient-name" name="nom">
							</div>
							<div class="modal-footer">
								<button type="button"  class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
								<button class="btn btn-success" name="add" type="submit" value="ajouter" >Ajouter</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<!-- POP UP Modifier DEPARTEMENT  -->
		<div  class="modal" id="updatedepartement">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modifier DEPARTEMENT</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="../AjouterDepartement" method="post">
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">ID DEPARTEMENT</label>
								<input type="text" class="form-control" id="recipient-name" >
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">NOM DEPARTEMENT</label>
								<input type="text" class="form-control" id="recipient-name">
							</div>
							<div class="modal-footer">
								<button type="button"  class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
								<button class="btn btn-success" name="add" type="submit" value="modifier">Modifier</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>	
	</body>
</html>


