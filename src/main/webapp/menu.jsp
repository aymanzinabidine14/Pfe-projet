<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%! String inst=""; %>
<% inst=session.getAttribute("role").toString(); %>
<% String etat[]={"none","none","none","none","none","none"};%>
<%switch(inst){
	case "administrateur":	
		etat[0]="";
		break;
	case "coordinateur":
		etat[1]="";
		break;
	case "encadrant_jure":
		etat[2]="";
		break;
	case "encadrant":
		etat[3]="";
		break;
	case "jure":
		etat[4]="";
		break;
	case "etudiant":
		etat[5]="";
		break;
	}%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sidebars/">

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      }
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="sidebars.css" rel="stylesheet">
  </head>
  <body>

<main>
  <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 220px; height:100%; position: fixed;">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
      <span class="fs-4">Dashboard</span>
    </a>
    <hr>
    <ul style="display:<%=etat[0] %>" id="administrateur" class="nav nav-pills flex-column mb-auto">
      <li>
        <a href="/pfe_v1.0/index.jsp" class="nav-link text-white">
          Acceuil
        </a>
      </li>
      <li>
        <a href="/pfe_v1.0/administrateur/departement.jsp" class="nav-link text-white">
          Departement
        </a>
      </li>
      <li>
        <a href="/pfe_v1.0/administrateur/filliere.jsp" class="nav-link text-white">
          Filiere
        </a>
      </li>
      <li>
        <a href="/pfe_v1.0/administrateur/coordinateur.jsp" class="nav-link text-white">
          Coordinateur
        </a>
      </li>
      <li>
        <a href="/pfe_v1.0/administrateur/professeur.jsp" class="nav-link text-white">
          Professeur
        </a>
      </li>
      <li>
        <a href="/pfe_v1.0/administrateur/etudiant.jsp" class="nav-link text-white">
          Etudiant
        </a>
      </li>
    </ul>
    
    <ul style="display:<%=etat[1] %>" id="coordinateur" class="nav nav-pills flex-column mb-auto">
      <li>
        <a href="../index.jsp" class="nav-link text-white">
          Acceuil
        </a>
      </li>
      <li>
        <a href="/pfe_v1.0/cordinnateur/index.jsp" class="nav-link text-white">
          Groupe pfe          
        </a>
      </li>
       <li>
        <a href="/pfe_v1.0/cordinnateur/delai.jsp" class="nav-link text-white">
         Gestion Date         
        </a>
      </li>
    </ul>
    
    <ul style="display:<%=etat[2] %>" id="encadrant_jure" class="nav nav-pills flex-column mb-auto">
      <li>
        <a href="index.jsp" class="nav-link text-white">
          Acceuil
        </a>
      </li>
      <li>
        <a href="goupeencadre.jsp" class="nav-link text-white">
          Groupe Encadrée
        </a>
      </li>
      <li>
        <a href="goupejure.jsp" class="nav-link text-white">
          Groupe Jure
        </a>
      </li>
      <li>
        <a href="sujet.jsp" class="nav-link text-white">
          Sujet
        </a>
      </li>
      <li>
        <a href="etudiant.jsp" class="nav-link text-white">
          Etudiant
        </a>
      </li>
      <li>
        <a href="soutenance.jsp" class="nav-link text-white">
          Soutenance
        </a>
      </li>
    </ul>
    
    <ul style="display:<%=etat[3] %>" id="encadrant" class="nav nav-pills flex-column mb-auto">
      <li>
        <a href="index.jsp" class="nav-link text-white">
          Acceuil
        </a>
      </li>
      <li>
        <a href="goupeencadre.jsp" class="nav-link text-white">
          Groupe Encadrée
        </a>
      </li>
      <li>
        <a href="sujet.jsp" class="nav-link text-white">
          Sujet
        </a>
      </li>
      <li>
        <a href="etudiant.jsp" class="nav-link text-white">
          Etudiant Soutenance
        </a>
      </li>
      <li>
        <a href="soutenance.jsp" class="nav-link text-white">
          Soutenance
        </a>
      </li>
    </ul>
    
    <ul style="display:<%=etat[4] %>" id="jure" class="nav nav-pills flex-column mb-auto">
      <li>
        <a href="index.jsp" class="nav-link text-white">
          Acceuil
        </a>
      </li>
      <li>
        <a href="goupejure.jsp" class="nav-link text-white">
          Groupe Jure
        </a>
      </li>
      <li>
        <a href="sujet.jsp" class="nav-link text-white">
          Sujet
        </a>
      </li>
      <li>
        <a href="etudiant.jsp" class="nav-link text-white">
          Etudiant
        </a>
      </li>
      <li>
        <a href="soutenance.jsp" class="nav-link text-white">
          Soutenance
        </a>
      </li>
    </ul>
    
    <ul style="display:<%=etat[5] %>" id="etudiant" class="nav nav-pills flex-column mb-auto">
      <li>
        <a href="index.jsp" class="nav-link text-white">
          Acceuil
        </a>
      </li>
      <li>
        <a href="/pfe_v1.0/cordinnateur/creergroupe.jsp" class="nav-link text-white">
           Créer Groupe
        </a>
      </li>
      <li>
        <a href="/pfe_v1.0/cordinnateur/plantravail.jsp" class="nav-link text-white">
          Plan de Travail
        </a>
      </li>
      <li>
        <a href="/pfe_v1.0/cordinnateur/rapport.jsp" class="nav-link text-white">
          Rapport et Projet
        </a>
      </li>
      <li>
        <a href="/pfe_v1.0/cordinnateur/soutenance.jsp" class="nav-link text-white">
          Soutenance
        </a>
      </li>
    </ul>
    <hr>
    
    <div class="dropdown">
      <a href="" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
        <strong>User</strong>
      </a>
      <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
        <li><a class="dropdown-item" href="/pfe_v1.0/administrateur/profil.jsp">Profile</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="/pfe_v1.0/Signout">Sign out</a></li>
      </ul>
    </div>
  </div>
  <div class="b-example-divider"></div>
</main>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      <script src="sidebars.js"></script>
  </body>
</html>
