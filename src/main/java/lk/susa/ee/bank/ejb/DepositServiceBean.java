package lk.susa.ee.bank.ejb;

import jakarta.ejb.*;
import lk.susa.ee.bank.ejb.remote.AccountService;
import lk.susa.ee.bank.ejb.remote.DepositService;
import lk.susa.ee.bank.ejb.remote.TransactionLogService;
import lk.susa.ee.bank.entity.Account;
import lk.susa.ee.bank.entity.TransactionType;
import lk.susa.ee.bank.exception.AccountNotFoundException;

import java.math.BigDecimal;

@Stateless
@TransactionAttribute(TransactionAttributeType.REQUIRED)
public class DepositServiceBean implements DepositService {

    @EJB
    private AccountService accountService;

    @EJB
    private TransactionLogService transactionLogService;

    @Override
    public void deposit(String accountNo, double amount) throws AccountNotFoundException {
        accountService.creditToAccount(accountNo, BigDecimal.valueOf(amount));

        Account account = accountService.findByAccountNo(accountNo);
        transactionLogService.log(accountNo, TransactionType.DEPOSIT, amount, account.getBalance(), null);

    }
}
