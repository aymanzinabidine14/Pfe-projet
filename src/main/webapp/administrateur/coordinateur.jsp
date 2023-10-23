<!DOCTYPE html>
<%@page import="entities.Filliere"%>
<%@page import="dao.FilliereDao"%>
<%@page import="java.util.List"%>
<%@page import="dao.CoordinateurDao"%>
<%@page import="entities.Coordinateur"%>

<%
CoordinateurDao cdao = new CoordinateurDao();
List<Coordinateur> cs= cdao.touscoord();
FilliereDao fdao = new FilliereDao();
List<Filliere> fs= fdao.tousfill();
%>
<html>
	<head>
		<title></title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="../assets/bootstrap.min.js"></script>
		<link rel="stylesheet" href="../assets/bootstrap.min.css">
		<link rel="stylesheet" href="datatables.bootstrap.css">
		<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	</head>
  
	<body>
	    <jsp:include page="../menu.jsp" /> 
		<div class="container">
			<div align="right">
				<button type="button" name="add_button"  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ajoutercoordinateur" style="position:absolute;left:17%;top:30%;">Ajouter Coordinateur</button>
			</div>
			<br />
			<div class="table-responsive" style="overflow-x: unset;width:80%;position:absolute;left:17%;top:40%;">
				<table dt-options="vm.dtOptions" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>ID Coordinateur</th>
	                      	<th>NOM Coordinateur</th>
	                      	<th>PRENOM Coordinateur</th>
	                      	<th>EMAIL Coordinateur</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<%for(Coordinateur c:cs) {%>					
						<tr>
							<td><%=c.getPpr() %></td>
							<td><%=c.getNom() %></td>
							<td><%=c.getPrenom() %></td>
							<td><%=c.getEmail() %></td>
							<td>
								<button type="button"  class="btn btn-warning btn-xs" data-bs-toggle="modal" data-bs-target="#modifiercoordinateur">Modifier</button>
								<a href="../SupprimerCoordinateur?id=<%=c.getPpr() %>">
									<button type="button"  class="btn btn-danger btn-xs">Supprimer</button>
								</a>
							</td>
						</tr>
						<%} %> 
					</tbody>
				</table>
			</div>
		</div>
					
		<!-- POP UP Ajouter COORDINATEUR  -->				
		<div class="modal" id="ajoutercoordinateur">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ajouter Coordinateur</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
						<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="../AjouterCoordinateur" method="post">
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">ID Coordinateur</label>
								<input name="id" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">NOM Coordinateur</label>
								<input name="nom" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">PRENOM Coordinateur</label>
								<input name="prenom" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">EMAIL Coordinateur</label>
								<input name="email" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<div class="form-group">
									<label for="message-text" class="col-form-label">FILLIERE</label>
									<select style="height: 100%;" name="fil_id" ng-model="id_fil" id="" class="form-control" onchange="yesnoCheck(this);">
										<%for(Filliere f:fs){ %>
											<option name="fil_id" value=<%=f.getId()%>><%=f.getNom() %></option>
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

		<!-- POP UP Modifier COORDINATEUR  -->
		<div class="modal" id="modifiercoordinateur">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modifier Coordinateur</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="../AjouterCoordinateur" method="post">
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">ID Coordinateur</label>
								<input name="id" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">NOM Coordinateur</label>
								<input name="nom" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">PRENOM Coordinateur</label>
								<input name="prenom" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">EMAIL Coordinateur</label>
								<input name="email" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<div class="form-group">
									<label for="message-text" class="col-form-label">FILLIERE</label>
									<select style="height: 100%;" name="fil_id" ng-model="id_fil" id="" class="form-control" onchange="yesnoCheck(this);">
										<%for(Filliere f:fs){ %>
											<option name="fil_id" value=<%=f.getId()%>><%=f.getNom() %></option>
											<%} %>
									</select>
								</div>
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

<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modifie Admin</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">ID Admin</label>
            <input type="text" class="form-control" id="recipient-name" value="">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">NOM Admin</label>
            <input type="text" class="form-control" id="recipient-name" value="">
          </div>
             <div class="form-group">
            <label for="message-text" class="col-form-label">Departement</label>
                <select style="height: 100%;" name="id_depa" ng-model="id_depa" id="" class="form-control"  value="MATH">
              <option selected>Choisir une departement</option>
    <option value="1">MATH</option>
            </select>
					</div>
        </form>
      </div>
      </div>
