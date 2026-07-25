package lk.susa.ee.bank.ejb.remote;

import jakarta.ejb.Local;
import lk.susa.ee.bank.exception.AccountNotFoundException;

@Local
public interface DepositService {
    void deposit(String accountNo, double amount) throws AccountNotFoundException;
}
