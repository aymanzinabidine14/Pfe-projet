<!DOCTYPE html>
<%@page import="entities.Filliere"%>
<%@page import="dao.FilliereDao"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProfesseurDao"%>
<%@page import="entities.Professeur"%>
<%
ProfesseurDao pdao = new ProfesseurDao();
List<Professeur> ps= pdao.tousprof();
FilliereDao fdao = new FilliereDao();
List<Filliere> fs= fdao.tousfill();
int pprpro=0;
%>
<html>
	<head>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="angular-datatables.min.js"></script>
		<script src="bootstrap.min.js"></script>
		<link rel="stylesheet" href="../assets/bootstrap.min.css">
		<link rel="stylesheet" href="datatables.bootstrap.css">
        <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	</head>
	<body>
		<jsp:include page="../menu.jsp" />
		<div class="container">
			<div align="right">
				<button type="button" name="add_button" ng-click="addData()" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#ajouterprofesseur" style="position:absolute;left:17%;top:30%;">Ajouter Professeur</button>
			</div>
			<br />
			<div class="table-responsive" style="overflow-x: unset;width:80%;position:absolute;left:17%;top:40%;">
				<table dt-options="vm.dtOptions" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>NOM</th>
							<th>PRENOM</th>
							<th>GRADE</th>
							<th>ROLE</th>
							<th>EMAIL</th>
							<th>ACTION</th>
						</tr>
					</thead>
					<tbody>
						<%for(Professeur p:ps) {%>	
							<tr>
								<td><%=p.getPpr() %></td>
								<td><%=p.getNom() %></td>
								<td><%=p.getPrenom() %></td>
								<td><%=p.getGrade() %></td>
								<td><%=p.getRole() %></td>
								<td><%=p.getEmail() %></td>
								<td>
									<button onclick="<%=pprpro=p.getPpr() %>" type="button" class="btn btn-warning btn-xs" data-bs-toggle="modal" 
									data-bs-target="#modifierprofesseur" data-bs-whatever=""  >Modifier</button>
									<a href="../SupprimerProfesseur?id=<%=p.getPpr() %>">
									<button type="button"  class="btn btn-danger btn-xs">Supprimer</button>
									</a>
								</td>
							</tr>
						<%} %>
					</tbody>
				</table>
			</div>
		</div>
		
		<!-- POP UP Ajouter PROFESSEUR  -->			
		<div class="modal" id="ajouterprofesseur">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ajouter Professeur</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form  action="../AjouterProfesseur" method="post">
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">ID</label>
								<input name="id" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">NOM</label>
								<input name="nom" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">PRENOM</label>
								<input name="prenom" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">GRADE</label>
								<input name="grade" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">ROLE</label>
								<select style="height: 100%;" name="role" ng-model="id_depa" id="" class="form-control" onchange="yesnoCheck(this);">
             						<option value="" selected>Choisir un role</option>
									<option name="role" value="encadrant">ENCADRANT</option>
									<option name="role" value="jure">JURE</option>
									<option name="role" value="encadrant_jure">ENCADRANT/JURE</option>
					            </select>
							</div>						
							<div class="form-group">
								<label for="message-text" class="col-form-label">EMAIL</label>
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

		<!-- POP UP Modifier PROFESSEUR  -->
		<div class="modal" id="modifierprofesseur">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modifeir Professeur</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form>
							<div class="form-group">
								<label for="recipient-name" class="col-form-label"></label>
								<input readonly type="text" class="form-control" id="recipient-name" value="<%=pprpro %>">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">PRENOM</label>
								<input type="text" class="form-control" id="recipient-name" value="Rachida">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">NUMERO DE SOMME</label>
								<input type="text" class="form-control" id="recipient-name" value="0000000000">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">ANCIENNETE</label>
								<input type="text" class="form-control" id="recipient-name" value="5">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">COMPETENCE</label>
								<select style="height: 100%;" name="id_depa" ng-model="id_depa" id="" class="form-control" onchange="yesnoCheck(this);">
									<option selected>Choisir une competence</option>
									<option value="1">IOT</option>
									<option value="1">DEV</option>
								</select>
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">MAIL</label>
								<input type="text" class="form-control" id="recipient-name" value="achida.aitbdelouahid-prof@prof.univh2c.ma">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">MOT DE PASSE</label>
								<input type="text" class="form-control" id="recipient-name">
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


