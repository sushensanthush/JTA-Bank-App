package lk.susa.ee.bank.ejb.remote;

import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.PersistenceContext;
import lk.susa.ee.bank.entity.User;

public class LoginServiceBean implements LoginService{

    @PersistenceContext(unitName = "BankPU")
    private EntityManager em;


    @Override
    public boolean login(String email, String password) {
        try {
            em.createNamedQuery("User.findByEmailAndPassword", User.class)
                    .setParameter("email", email)
                    .setParameter("password", password)
                    .getSingleResult();
            return true;
        } catch (NoResultException e) {
            return false;
        }
    }

    @Override
    public User findByEmail(String email) {
        try{
            return em.createNamedQuery("User.findByEmail", User.class)
                    .setParameter("email", email)
                    .getSingleResult();
        } catch (NoResultException e){
            return null;
        }
    }
}
