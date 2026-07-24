package lk.susa.bank.ejb.remote;


import jakarta.ejb.Local;
import lk.susa.bank.exception.DuplicateEmailException;

import java.rmi.RemoteException;

@Local
public interface RegisterService {
    void registerUser(String name, String email, String password) throws DuplicateEmailException;

}
