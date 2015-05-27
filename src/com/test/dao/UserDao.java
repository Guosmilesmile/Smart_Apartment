package com.test.dao;  
  
import com.test.bean.User;  
  
public interface UserDao {  
    public User find(String userid, String password);  
    public User find(User user);  
    public int addUser(User user);
    public User findByuserid(String userid);
}  