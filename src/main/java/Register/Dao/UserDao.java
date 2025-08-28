package Register.Dao;

import Register.Model.User;

public interface UserDao {
    User findByUserName(String username);
}
