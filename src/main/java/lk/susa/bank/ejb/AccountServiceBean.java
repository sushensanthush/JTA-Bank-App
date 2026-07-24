package lk.susa.bank.ejb;

import jakarta.ejb.Stateless;
import jakarta.ejb.TransactionAttribute;
import jakarta.ejb.TransactionAttributeType;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.susa.bank.ejb.remote.AccountService;
import lk.susa.bank.entity.Account;
import lk.susa.bank.entity.AccountType;
import lk.susa.bank.exception.AccountNotFoundException;
import lk.susa.bank.exception.InsufficientFundsException;

import java.math.BigDecimal;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

@Stateless
public class AccountServiceBean implements AccountService {

    @PersistenceContext(unitName = "BankPU")
    private EntityManager em;


    @Override
    public void creditToAccount(String email, BigDecimal amount) {

    }

    @Override
    public void debitFromAccount(String email, BigDecimal amount) throws InsufficientFundsException {

    }

    @Override
    public Account findByAccountNo(String accountNo) throws AccountNotFoundException {
        return null;
    }

    @Override
    public List<Account> findAccountsByUserEmail(String email) throws AccountNotFoundException {
        return List.of();
    }

    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public void createAccount(String email, AccountType accountType, BigDecimal openingBalance) {

    }

    @Override
    @TransactionAttribute(TransactionAttributeType.NOT_SUPPORTED)
    public String generateAccountNumber(AccountType type) {
        int branchCode = ThreadLocalRandom.current().nextInt(0, 9999); // Random Number Can Generate using TreadLocalRandom
        int typeCode = (type == AccountType.CURRENT) ? 2:1;
        long serial = System.currentTimeMillis() % 100_000_000L;

        return String.format("%03d%d%d08d",branchCode,typeCode,serial);
    }
}
