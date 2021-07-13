package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODOne: show the registration form
        if (request.getSession().getAttribute("user") != null) {
            request.getRequestDispatcher("/profile").forward(request, response);
            return;
        }
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");


        boolean notEmpty =!username.isEmpty() && !password.isEmpty() && !confirmPassword.isEmpty() && !email.isEmpty();
        boolean passwordsMatch = password.equals(confirmPassword);
        boolean actuallyAnEmail = email.contains("@") && email.contains(".");
//        boolean newUserName = DaoFactory.getUsersDao().findByUsername(username).getUsername() == null;
        boolean userExists;


        try {
            DaoFactory.getUsersDao().findByUsername(username);
            userExists = true;
        } catch (Exception e) {
            userExists = false;
        }


        if(notEmpty && passwordsMatch && actuallyAnEmail && !userExists) {
            User newUser = new User(
                    username,
                    email,
                    password
            );
            DaoFactory.getUsersDao().insert(newUser);
            newUser = DaoFactory.getUsersDao().findByUsername(newUser.getUsername());
            request.getSession().setAttribute("user", newUser);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/register");
        }

        // TODO: ensure the submitted information is valid
        // TODO: create a new user based off of the submitted information
        // TODO: if a user was successfully created, send them to their profile
    }
}
