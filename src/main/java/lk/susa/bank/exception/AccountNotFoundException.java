package lk.susa.bank.exception;

public class AccountNotFoundException extends Exception {
    public AccountNotFoundException(String accountNo) {

        super("No account found with account number " + accountNo);

    }
}
