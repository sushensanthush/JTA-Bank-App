package lk.susa.ee.bank.ejb.remote;

import jakarta.ejb.Local;
import lk.susa.ee.bank.entity.Account;
import lk.susa.ee.bank.exception.AccountNotFoundException;
import lk.susa.ee.bank.exception.InsufficientFundsException;

@Local
public interface TransferService {
    void transferAmount(String sourceAccountNo, String destinationAccountNo, double amount)
            throws InsufficientFundsException, AccountNotFoundException;
}
