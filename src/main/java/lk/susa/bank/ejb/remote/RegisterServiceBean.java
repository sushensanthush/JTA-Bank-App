package lk.susa.bank.ejb.remote;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.susa.bank.ejb.remote.RegisterService;
import lk.susa.bank.entity.User;
import lk.susa.bank.exception.DuplicateEmailException;

import java.rmi.RemoteException;

@Stateless
public class RegisterServiceBean implements RegisterService {

    @PersistenceContext(unitName = "BankPU")
    private EntityManager em;

    @Override
    public void registerUser(String name, String email, String password) throws DuplicateEmailException {

        long existing= em.createNamedQuery("User.findByEmail", User.class)
                .setParameter("email", email)
                .getResultList()
                .size();

        if(existing > 0){
            throw new DuplicateEmailException(email);
        }
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);

        em.persist(user);
        em.flush();


    }
}
