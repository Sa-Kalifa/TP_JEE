<%-- 
    Document   : index
    Created on : 24 mai 2024, 17:16:56
    Author     : kalifa.sanogo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accueil</title>
        <style>
            body{
                display: block;
                justify-content: center;
                text-align: center;
            }
            h1{
               font-size: 40px;
               margin-bottom: 120px;
               margin-top: 100px;
            }
            button {
                font-size: 18px;
                background-color: #4CAF50;
                color: white;
                padding: 13px 40px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            button:hover {
                background-color: #45a047;
            }
    </style>
    </head>
    <body>
        <h1>Bienvenue sur l'application de gestion des contacts Apprenant</h1>
        <a href="contacts.jsp"><button>Voir les Contacts</button></a>
        
    </body>
</html>
