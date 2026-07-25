package lk.susa.ee.bank.servlet;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.susa.ee.bank.ejb.remote.TransactionLogService;

import java.io.IOException;

@WebServlet("/history")
public class History extends HttpServlet {

    @EJB
    private TransactionLogService transactionLogService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accountNo = req.getParameter("accountNo");
        req.setAttribute("accountNo", accountNo);
        req.setAttribute("transactions", transactionLogService.history(accountNo));
        req.getRequestDispatcher("history.jsp").forward(req, resp);
    }
}
