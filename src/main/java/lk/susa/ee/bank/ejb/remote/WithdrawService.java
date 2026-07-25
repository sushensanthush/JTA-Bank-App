package lk.susa.ee.bank.ejb.remote;

import jakarta.ejb.Local;
import lk.susa.ee.bank.exception.AccountNotFoundException;
import lk.susa.ee.bank.exception.InsufficientFundsException;

@Local
public interface WithdrawService {
    void withdraw(String accountNo, double amount)
            throws InsufficientFundsException,
            AccountNotFoundException;
}
