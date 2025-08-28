package Register.Service;

import Register.Model.User;

public interface UserService {
    User login(String username, String password);
    User findByUserName(String username);
}
