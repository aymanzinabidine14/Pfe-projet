<!DOCTYPE html>
<%@page import="dao.EtudiantDao"%>
<%@page import="dao.GroupeDao"%>
<%@page import="dao.ProfesseurDao"%>

<%@page import="java.util.List"%>
<%@page import="entities.Groupe"%>
<%@page import="entities.Etudiant"%>
<%@page import="entities.Professeur"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
GroupeDao ddao = new GroupeDao();
List<Groupe> ds= ddao.tousgrp();%>
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
	    
	    
    <!--  
    <div class="filtre1">
      <select class="form-control">
      <option selected>Par Filiere</option>

      <option>SMI</option>
      <option>SMA</option>

      </select>
    </div>
    <div class="filtre2">
      <select class="form-control">
      <option selected>Par Encadrant</option>
      <option >Rachida AIT ABDELOUAHID</option>
      <option >MOHAMED AZOUAZI</option>
      <option >EL FIlALI SANAA</option>



      </select>
    </div>
    <div class="filtre3">
      <select class="form-control">
      <option selected>Etat</option>
      <option >Termine</option>
      <option >Non Termine</option>


      </select>
    </div>
        <div class="filtre4">
     <button type="button" name="add_button" class="btn btn-success">Filtre</button>
    </div>-->
     <div class="filtre5">
    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#myModal">Affecte les encadrants</button>  
    </div>
		<div class="container" ng-init="fetchData()" style:>

			<br />
			<div class="table-responsive" style="overflow-x: unset;width:80%;position:absolute;left:17%;top:40%;">
				<table dt-options="vm.dtOptions" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Group Etudiants</th>
                        	<th>Encadrant</th>
                           <th>Sujet</th>
                            <!--<th>Etat</th>
							<th>ACTION</th>-->
						</tr>
					</thead>
					<tbody>
							<%for(Groupe d:ds) {%>	
						<tr>
						<%
						ProfesseurDao pdao = new ProfesseurDao();
						Professeur p= pdao.findUserById(d.getId());
						
						EtudiantDao edao = new EtudiantDao();
                         List<Etudiant> es= edao.etuby_grp(d.getId());%>
                         	<td>
                           <%for(Etudiant e:es) {%>	
                         	<%=e.getNom()%> <%=e.getPrenom()%>
                         	</p>
                         	<%} %>
                         	</td>
                         	<% if(p!=null){%>
							<td><%=p.getNom()%></td>
							 <% }else{%>
							  <td>pas affecte</td>
							                         	<%} %>
							
							<td></td>
			
						</tr>
						<%} %> 
					</tbody>
				</table>
			</div>

		</div>
	</body>
</html>  

<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header" >
        <h4 class="modal-title">Affecte les encadrants</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
       <div class="modal-body">
            <p>Merci de verifie que tout les groupes sont creer.</p>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <form action="../affecter_encadrant" method="post">
        <button type="submit" class="btn btn-primary" data-bs-dismiss="modal" action="../affecter_encadrant">Affecte</button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Ferme</button>
        </form>

      </div>

    </div>
  </div>
</div>
