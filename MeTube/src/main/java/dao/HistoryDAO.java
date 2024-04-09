package dao;

import java.util.List;

import entity.History;

public class HistoryDAO extends AbstractDAO<History> {

	public List<History> findByUser(String id) {
		//
		String sql = "SELECT o FROM History o WHERE o.user.id = ?0 AND o.video.isActive = 1"
				+ " ORDER BY o.viewedDate DESC";
		return super.findMany(History.class, sql, id);
	}

	public List<History> findByUserAndIsLiked(String id) {
		//
		String sql = "SELECT o FROM History o WHERE o.user.username = ?0 AND o.isLiked = 1"
				+ " AND o.video.isActive = 1" + " ORDER BY o.viewedDate DESC";
		return super.findMany(History.class, sql, id);
	}
	
	public History findByUserIdAndVideoId(String userId, Integer videoId) {
		//
		String sql = "SELECT o FROM History o  WHERE o.user.id = ?0 AND o.video.id = ?1" + " AND o.video.isActive = 1";
		return super.findOne(History.class, sql, userId, videoId);
	}
}
