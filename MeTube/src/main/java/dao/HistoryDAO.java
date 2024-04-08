package dao;

import java.util.List;

import entity.History;

public class HistoryDAO extends AbstractDAO<History> {

	public List<History> findByUser(String username) {
		//
		String sql = "SELECT o FROM History o WHERE o.user.username = ?0 AND o.video.isActive = 1"
				+ " ORDER BY o.viewedDate DESC";
		return super.findMany(History.class, sql, username);
	}

	public List<History> findByUserAndIsLiked(String username) {
		//
		String sql = "SELECT o FROM History o WHERE o.user.username = ?0 AND o.isLiked = 1"
				+ " AND o.video.isActive = 1" + " ORDER BY o.viewedDate DESC";
		return super.findMany(History.class, sql, username);
	}
	
	public History findByUserIdAndVideoId(Integer userId, Integer videoId) {
		//
		String sql = "SELECT o FROM History o  WHERE o.user.id = ?0 AND o.video.id = ?1" + " AND o.video.isActive = 1";
		return super.findOne(History.class, sql, userId, videoId);
	}
}
