package servlet;

import classes.Contact;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/contacts")
public class ContactServlet extends HttpServlet {
    private List<Contact> contacts = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        getServletContext().setAttribute("contacts", contacts);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("contacts", contacts);
        request.getRequestDispatcher("contacts.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            contacts.removeIf(contact -> contact.getId() == id);
        } else {
            String nom = request.getParameter("nom");
            String tel = request.getParameter("tel");
            String email = request.getParameter("email");
            String competence = request.getParameter("competence");

            Contact c = new Contact(contacts.size() + 1, nom, tel, email, competence);
            contacts.add(c);
        }
        response.sendRedirect("contacts");
    }
}
