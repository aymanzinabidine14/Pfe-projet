<!DOCTYPE html>
<%@page import="java.util.ListIterator"%>
<%@page import="entities.Filliere"%>
<%@page import="dao.FilliereDao"%>
<%@page import="java.util.List"%>
<%@page import="dao.EtudiantDao"%>
<%@page import="entities.Etudiant"%>
<%
EtudiantDao edao = new EtudiantDao();
List<Etudiant> es= edao.tousetu();
FilliereDao fdao = new FilliereDao();
List<Filliere> fs= fdao.tousfill();
%>
<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="jquery.min.js"></script>
		<link rel="stylesheet" href="../assets/bootstrap.min.css">
		<link rel="stylesheet" href="../assets/datatables.bootstrap.css">
        <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
        <script type="text/javascript" src="../editstu.js"></script>        
	</head>
	<body>
		<jsp:include page="../menu.jsp" />
		<div class="container" >
			<div align="right">
				<button type="button" name="add_button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#ajouteretudiant" style="position:absolute;left:17%;top:30%;">Ajouter Etudiant</button>
			</div>
            <div align="right">
				<button type="button" name="add_fichier" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#ajouterFichier" style="position:absolute;left:30%;top:30%;">importer depuis un fichier excel</button>
			</div>
			<br />
			<div class="table-responsive" style="overflow-x: unset;width:80%;position:absolute;left:17%;top:40%;">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>NOM</th>
                        	<th>PRENOM</th>
                            <th>CODE APOGEE</th>
                            <th>EMAIL</th>
							<th>ACTION</th>

						</tr>
					</thead>
					<tbody>
						<%for(Etudiant e:es) {%>	
							<tr>
								<td name="nome" id="nome"><%=e.getNom() %></td>
								<td name="prenome" id="prenome"><%=e.getPrenom() %></td>
								<td name="appogeee" id="appogeee"><%=e.getAppogee() %></td>
								<td name="emaile" id="emaile"><%=e.getEmail() %></td>
								<td>
									<button id="modifieretu" type="button" data-bs-toggle="modal" data-bs-target="#modifieretudiant" class="btn btn-warning btn-xs"><a href="?id=<%=e.getAppogee()%>">Modifier</a></button>
									<a href="../SupprimerEtudiant?id=<%=e.getAppogee() %>">
									<button type="button"  class="btn btn-danger btn-xs">Supprimer</button>
									</a>
								</td>
							</tr>
						<%} %>
					</tbody>
				</table>
				
			</div>
		</div>
		
		<!-- POP UP Ajouter ETUDIANT  -->	
		<div class="modal" id="ajouteretudiant">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ajouter Etudiant</h5>
					<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
					<span aria-hidden="true">&times;</span>
					</button>
					</div>
					<div class="modal-body">
						<form action="../AjouterEtudiant" method="post">
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">NOM</label>
								<input name="nom" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">PRENOM</label>
								<input name="prenom" type="text" class="form-control" id="recipient-name">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">CODE APOGEE</label>
								<input name="id" type="text" class="form-control" id="recipient-name">
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
							<div class="form-group">
								<label for="message-text" class="col-form-label">EMAIL</label>
								<input name="email" type="text" class="form-control" id="recipient-name">
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
		
		<!-- POP UP Ajouter PLUSIEURS ETUDIANT  -->
		<div class="modal" id="ajouterFichier" >
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Importer un fichier excel</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="../AjouterEtudiant" method="post">   
							<div class="form-group">
								<label for="message-text" class="col-form-label">FICHIER</label>
								<input name="fcsv" type="file" class="form-control" id="recipient-name">
							</div>
							<div class="modal-footer">
								<button type="button"  class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
								<button class="btn btn-success" name="add" type="submit" value="plsajouter">Ajouter</button>
							</div>
						</form>
					</div>		
				</div>
			</div>
		</div>
		
		<!-- POP UP Modifier Etudiant  -->
		<div class="modal" id="modifieretudiant">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modifier Etudiant</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">       
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form>
							<div class="form-group">
								<label for="recipient-name" class="col-form-label"></label>NOM
								<input value="${param.id }" readonly type="text" class="form-control" name="nom" id="recipient-name" >
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">PRENOM</label>
								<input type="text" class="form-control" id="" value="">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">APPOGEE</label>
								<input type="text" class="form-control" id="" value="">
							</div>							
							<div class="form-group">
								<label for="message-text" class="col-form-label">EMAIL</label>
								<input type="text" class="form-control" id="" value="">
							</div>
							<div class="modal-footer">
								<button type="button"  class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
								<button class="btn btn-success" name="add" type="submit" value="oneadd">Modifier</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script>
	
	
	</script>
</html>
