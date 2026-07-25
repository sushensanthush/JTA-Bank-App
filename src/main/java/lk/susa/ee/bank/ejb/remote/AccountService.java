package lk.susa.ee.bank.ejb.remote;

import jakarta.ejb.Local;
import lk.susa.ee.bank.entity.Account;
import lk.susa.ee.bank.entity.AccountType;
import lk.susa.ee.bank.exception.AccountNotFoundException;
import lk.susa.ee.bank.exception.InsufficientFundsException;

import java.math.BigDecimal;
import java.util.List;

@Local
public interface AccountService {
    void creditToAccount(String accountNo, BigDecimal amount);
    void debitToAccount(String accountNo, BigDecimal amount) throws InsufficientFundsException;
    Account findByAccountNo(String accountNo) throws AccountNotFoundException;
    List<Account> findAccountsByUserEmail(String email);
    Account createAccount(String email, AccountType type, BigDecimal openingBalance);
    String generateAccountNumber(AccountType type);
}
