package lk.susa.bank.ejb.remote;

import lk.susa.bank.entity.Account;
import lk.susa.bank.entity.AccountType;
import lk.susa.bank.exception.AccountNotFoundException;
import lk.susa.bank.exception.InsufficientFundsException;

import java.math.BigDecimal;
import java.util.List;

public interface AccountService {
    void creditToAccount(String email, BigDecimal amount);

    void debitFromAccount(String email, BigDecimal amount) throws InsufficientFundsException;
    Account findByAccountNo(String accountNo) throws AccountNotFoundException;

    List<Account> findAccountsByUserEmail(String email) throws AccountNotFoundException;

    void createAccount(String email, AccountType accountType, BigDecimal openingBalance);

    String generateAccountNumber(AccountType accountType);
}
