package dao;

import java.util.List;
import java.util.Map;

import entity.User;

public class UserDAO extends AbstractDAO<User>{
	public User findByID(String id) {
		// Ke thua tu UserDAO
		return super.findByUserId(User.class, id);
	}

	public User findByEmail(String email) {
		// Su dung cau lenh SQL
		String sql = "SELECT  o FROM User o WHERE o.email = ?0";
		return super.findOne(User.class, sql, email);
	}

	public User findByUserID(String id) {
		String sql = "SELECT  o FROM User o WHERE o.id = ?0";
		return super.findOne(User.class, sql, id);
	}

	public User findByUsernameAndPassword(String id, String password) {
		String sql = "SELECT  o FROM User o WHERE o.id = ?0 AND o.password = ?1";
		return super.findOne(User.class, sql, id, password);
	}

	public List<User> findAll() {
		// Tim nhung User dang hoat dong
		return super.findAll(User.class, true);
	}

	public List<User> findAll(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return super.findAll(User.class, true, pageNumber, pageSize);
	}

	public List<User> findUsersLikedByVideoHref(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return super.callStore("User.FindListLikedByVideoHref", params);
	}
}
