import com.accp.entity.User;
import com.accp.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.io.Serializable;

public class train2 {
    public static void main(String[] args) {
        Session session = HibernateUtil.session();
        Transaction transaction = session.beginTransaction();
        User user = new User();
        user.setId(6);
        user.setIsadmin("asdf");
        user.setName("asdfasdf");
        user.setPassword("asdfasdf");
        user.setTelephone("1358888888");
        user.setUsername("asfasf");
        Serializable serializable = session.save(user);
        System.out.println(serializable);
//        User user1 = new User();
//        user1.setId(1);
//        user1.setIsadMin("asdf");
//        user1.setName("asdfasdf");
//        user1.setPassword("asdfasdf");
//        user1.setTelephone("1358888888");
//        user1.setUserName("asfasf");
//        session.update(user1);
        //删除用户
//        session.delete(user);
        transaction.commit();
        session.close();
    }
}
