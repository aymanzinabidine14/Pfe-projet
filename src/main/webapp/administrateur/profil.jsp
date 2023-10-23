<%@page import="entities.Administrateur"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%Administrateur admin =(Administrateur)session.getAttribute("user"); %>    
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<link rel="stylesheet" href="../assets/bootstrap.min.css">
		<link rel="stylesheet" href="datatables.bootstrap.css">
        <link rel="stylesheet" href="../assets/style3.css">
        <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	</head>
	<body>
    <jsp:include page="../menu.jsp" /> 
        <div class="container">
        <header>Profile</header>
        <form action="../MaJAdministrateur" method="post">
            <div class="form first">
                <div class="details personal">
                    <div class="fields">
                    	<div class="input-field">
                            <label>ID</label>
                            <input name="id" readonly type="text" value="<%=admin.getId() %>" required>
                        </div>
                        <div class="input-field">
                            <label>Nom</label>
                            <input name="nom" readonly type="text" value="<%=admin.getNom() %>" required>
                        </div>
                        <div class="input-field">
                            <label>Prenom</label>
                            <input name="prenom" readonly type="text" value="<%=admin.getPrenom() %>" required>
                        </div>
                        <div class="input-field">
                            <label>Email</label>
                            <input name="email"  type="text" value="<%=admin.getEmail() %>" required>
                        </div>
                        <div class="input-field">
                            <label>Mot de Passe</label>
                            <input name="mdp" type="password" placeholder="Entrer votre mot de passe" required>
                        </div>
                        <div class="input-field">
                            <label>Confirmer</label>
                            <input name="cmdp" type="password" placeholder="Réentrer votre mot de passe" required>
                        </div>
                        <!--  <div class="input-field">
                            <label>N° téléphone</label>
                            <input type="number" placeholder="Entrer votre numero de telephone" required>
                        </div>-->
                    	<div>                 
                        	<button class="btnText" name="add" type="submit" value="modifier">Enregister</button>
                		</div>
            		</div>
	        	</form>
    		</div>
		</body>
</html>
