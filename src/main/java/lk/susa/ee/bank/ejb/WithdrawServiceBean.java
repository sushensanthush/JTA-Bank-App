package lk.susa.ee.bank.ejb;

import jakarta.ejb.EJB;
import jakarta.ejb.Stateless;
import jakarta.ejb.TransactionAttribute;
import jakarta.ejb.TransactionAttributeType;
import lk.susa.ee.bank.ejb.remote.AccountService;
import lk.susa.ee.bank.ejb.remote.TransactionLogService;
import lk.susa.ee.bank.ejb.remote.WithdrawService;
import lk.susa.ee.bank.entity.Account;
import lk.susa.ee.bank.entity.TransactionType;
import lk.susa.ee.bank.exception.AccountNotFoundException;
import lk.susa.ee.bank.exception.InsufficientFundsException;

import java.math.BigDecimal;

@Stateless
@TransactionAttribute(TransactionAttributeType.REQUIRED)
public class WithdrawServiceBean implements WithdrawService {

    @EJB
    private AccountService accountService;

    @EJB
    private TransactionLogService transactionLogService;

    @Override
    public void withdraw(String accountNo, double amount) throws InsufficientFundsException,
            AccountNotFoundException {
        accountService.debitToAccount(accountNo, BigDecimal.valueOf(amount));
        Account account = accountService.findByAccountNo(accountNo);
        transactionLogService.log(accountNo, TransactionType.WITHDRAWAL,
                amount, account.getBalance(), null);

    }
}
