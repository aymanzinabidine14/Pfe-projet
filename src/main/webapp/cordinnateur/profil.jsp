<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<script src="jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
		<script src="jquery.dataTables.min.js"></script>
		<script src="angular-datatables.min.js"></script>
		<script src="bootstrap.min.js"></script>
		<link rel="stylesheet" href="bootstrap.min.css">
		<link rel="stylesheet" href="datatables.bootstrap.css">
        		<link rel="stylesheet" href="style2.css">
                		<link rel="stylesheet" href="style3.css">


        
        <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	</head>
 
  
	<body ng-app="crudApp" ng-controller="crudController">
        
        <div class="wraper">
    <div class="sidebr">
         <ul>
            <h1><i class="fas fa-database"></i></h1>
            <li class=""><a href="index.html">Departement</a></li>
            <li class=""><a href="filiere.html">Filiere</a></li>
            <li class=""><a href="admin.html">Admin</a></li>
        </ul> 
         <ul class="">
        
        <li class="profil"><a href="profil.html">profil</a></li>
            <li class=""><a href="">deconnexion</a></li>
        </ul>
     </div>
     </div>	
        
        <div class="container">
        <header>Profile</header>

        <form action="#">
            <div class="form first">
                <div class="details personal">
                    <div class="fields">
                        <div class="input-field">
                            <label>Nom</label>
                            <input type="text" placeholder="Entrer voter nom" required>
                        </div>

                        <div class="input-field">
                            <label>Prénom</label>
                            <input type="text" placeholder="Entrer voter prénom" required>
                        </div>


                        <div class="input-field">
                            <label>Email</label>
                            <input type="text" placeholder="Entrer votre email" required>
                        </div>

                        <div class="input-field">
                            <label>Mot de Passe</label>
                            <input type="password" placeholder="Entrer votre mot de passe" required>
                        </div>

                        <div class="input-field">
                            <label>Confirmer</label>
                            <input type="password" placeholder="Réentrer votre mot de passe" required>
                        </div>

                        <div class="input-field">
                            <label>N° téléphone</label>
                            <input type="number" placeholder="Entrer votre numero de telephone" required>
                        </div>
                    </div>                 
                        <button class="sumbit">
                            <span class="btnText">Enregister</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                </div>
            </div>

            
        </form>
    </div>
	</body>
</html>
