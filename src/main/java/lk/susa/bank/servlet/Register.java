package lk.susa.bank.servlet;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.susa.bank.ejb.remote.RegisterService;

import java.io.IOException;

@WebServlet("/register")
public class Register extends HttpServlet {

    @EJB
    private RegisterService registerService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try{
            registerService.registerUser(name, email, password);
            req.setAttribute("message", "User registered successfully");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }catch (Exception e){
            req.setAttribute("error", e.getMessage());
            req.getRequestDispatcher("/register.jsp").forward(req, resp);

        }

    }
}
