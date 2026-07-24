package lk.susa.ee.bank.ejb.remote;


import jakarta.ejb.Local;
import lk.susa.ee.bank.exception.DuplicateEmailException;

@Local
public interface RegisterService {
    void registerUser(String name, String email, String password, double openingBalance) throws DuplicateEmailException;
}