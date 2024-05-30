<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Page de Contact</title>
    <link rel="stylesheet" href="Style.css"/>
</head>
<body>

    <div class="center-content">
        <h1>Ajouter un nouveau contact</h1>
        <form action="contacts" method="post">
            <label for="nom">Nom:</label>
            <input type="text" id="nom" name="nom" required><br>
            <label for="tel">Téléphone:</label>
            <input type="tel" id="tel" name="tel" required><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>
            <label for="competence">Compétence Favorite:</label>
            <input type="text" id="competence" name="competence" required><br>
            <input type="submit" value="Ajouter">
        </form>

        <h1>Liste des Contacts</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Téléphone</th>
                <th>Email</th>
                <th>Compétence</th>
                <th>Action</th>
            </tr>
            <tbody>
            <c:forEach var="contact" items="${contacts}">
                <tr>
                    <td>${contact.id}</td>
                    <td>${contact.nom}</td>
                    <td>${contact.tel}</td>
                    <td>${contact.email}</td>
                    <td>${contact.competence}</td>
                    <td>
                        <form action="contacts" method="post" style="display: inline;">
                            <input type="hidden" name="id" value="${contact.id}">
                            <input type="hidden" name="action" value="delete">
                            <button type="submit" class="delete-btn">Supprimer</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <a href="index.jsp">Retour à l'accueil</a>
</body>
</html>
