package lk.susa.ee.bank.ejb.remote;

import jakarta.ejb.Local;
import lk.susa.ee.bank.entity.Transaction;
import lk.susa.ee.bank.entity.TransactionType;
import lk.susa.ee.bank.exception.AccountNotFoundException;

import java.util.List;

@Local
public interface TransactionLogService {
    void log(String accountNo, TransactionType type,  double amount, double balanceAfter, String relatedAccountNo);
    List<Transaction> history(String accountNo);
}
