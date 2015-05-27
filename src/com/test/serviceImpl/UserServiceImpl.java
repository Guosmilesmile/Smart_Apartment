package com.test.serviceImpl;  
  
import com.test.bean.User;  
import com.test.dao.UserDao;  
import com.test.service.UserService;  
  
public class UserServiceImpl implements UserService {  
    private UserDao userDao;  
      
    public User findUser(User user) {  
        return findUser(user.getUserid(),user.getPassword());  
    }  
  
    public UserDao getUserDao() {  
        return userDao;  
    }  
  
    public void setUserDao(UserDao userDao) {  
        this.userDao = userDao;  
    }  
  
    @Override  
    public User findUser(String userid, String password) {  
        User user = null;
    	try  
            {  
            User u = userDao.find(userid, password);  
            if (u != null )  
                {  
                	user  = u;
                }  
            }  
        catch (Exception e)  
            {  
        	e.printStackTrace();
            System.out.println("isLogin error\n" + e.getMessage());  
            
            }  
        return user;
    }

	@Override
	public boolean addUser(User user) {
		try {
			int number = userDao.addUser(user);
			if(number!=-1)
				return true;
			else
				return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}  
  
}  