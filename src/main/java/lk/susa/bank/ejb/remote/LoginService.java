package lk.susa.bank.ejb.remote;

import lk.susa.bank.entity.User;

public interface LoginService {
    boolean login(String email, String password);
    User findByEmail(String email);
}
