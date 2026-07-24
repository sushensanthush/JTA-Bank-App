package lk.susa.bank.exception;


import jakarta.ejb.ApplicationException;

import java.math.BigDecimal;

@ApplicationException(rollback = true)
public class InsufficientFundsException extends Exception {
    public InsufficientFundsException(String accountNo, BigDecimal requested, BigDecimal available) {
        super("Insufficient funds in account " + accountNo + " to cover the requested amount of " + requested
                + ". Available balance is " + available);

    }
}
