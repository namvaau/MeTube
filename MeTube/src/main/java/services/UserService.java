package services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.UserDAO;
import entity.User;

public class UserService {
	private UserDAO dao;

	public UserService() {
		dao = new UserDAO();
	}

	public User findByID(String id) {
		//
		return dao.findByID(id);
	}

	public User findByEmail(String email) {
		//
		return dao.findByEmail(email);
	}

	public User findByUserID(String id) {
		//
		return dao.findByUserID(id);
	}

	public User login(String id, String password) {
		// TODO Auto-generated method stub
		return dao.findByUsernameAndPassword(id, password);
	}

	public User resetPassword(String email) {
		User existUser = findByEmail(email); // Tim xem da ton tai User voiw Email nay chua
		if (existUser != null) {
			// Math.random -> pass
			// (Math.random()) * ((max - min) + 1)) + min
			String newPass = String.valueOf((int) (Math.random() * ((9999 - 1000) + 1)) + 1000);
			existUser.setPassword(newPass);
			return dao.update(existUser);
		}
		return null;
	}

	public List<User> findAll() {

		return dao.findAll();
	}

	public List<User> findAll(int pageNumber, int pageSize) {
		//
		return dao.findAll(pageNumber, pageSize);
	}

	public User create(String id, String fullname, String password, String email) {
		//
		User newUser = new User();
		newUser.setId(id);
		newUser.setUsername(fullname);
		newUser.setPassword(password);
		newUser.setEmail(email);
		newUser.setIsAdmin(Boolean.FALSE);
		newUser.setIsActive(Boolean.TRUE);
		return dao.create(newUser);

	}

	public User update(User entity) {
		//
		return dao.update(entity);
	}

	public User delete(String id) {
		//
		User user = dao.findByUserID(id);
		user.setIsActive(Boolean.FALSE);
		return dao.update(user);
	}

	public List<User> findUsersLikedByVideoHref(String href) {
		//
		Map<String, Object> params = new HashMap<>();
		params.put("videoHref", href);
		return dao.findUsersLikedByVideoHref(params);

	}
}
