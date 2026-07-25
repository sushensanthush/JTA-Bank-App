package lk.susa.ee.bank.servlet;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.susa.ee.bank.ejb.remote.AccountService;
import lk.susa.ee.bank.ejb.remote.TransferService;
import lk.susa.ee.bank.entity.Account;
import lk.susa.ee.bank.exception.AccountNotFoundException;
import lk.susa.ee.bank.exception.InsufficientFundsException;

import java.io.IOException;
import java.util.List;

@WebServlet("/transfer")
public class Transfer extends HttpServlet {

    @EJB
    private AccountService accountService;

    @EJB
    private TransferService transferService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getSession().getAttribute("user").toString();
        List<Account> accounts = accountService.findAccountsByUserEmail(email);
        req.setAttribute("accounts", accounts);
        req.getRequestDispatcher("transfer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sourceAccountNo = req.getParameter("sourceAccountNo");
        String destinationAccountNo = req.getParameter("destinationAccountNo");
        double amount = Double.parseDouble(req.getParameter("amount"));

        try {
            transferService.transferAmount(sourceAccountNo,destinationAccountNo,amount);
            resp.sendRedirect(req.getContextPath()+"/dashboard");
        }catch (InsufficientFundsException | AccountNotFoundException | IllegalArgumentException e) {
            req.setAttribute("error",e.getMessage());
            req.getRequestDispatcher("transfer.jsp").forward(req, resp);
        }

    }
}
