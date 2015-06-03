package com.test.service;  
  
import com.test.bean.User;  
  
public interface UserService {  
  
    public User findUser(User user);  
    public User findUser(String userid, String password);
    public boolean addUser(User user);
}  