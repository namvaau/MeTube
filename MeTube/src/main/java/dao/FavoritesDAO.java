package dao;

import java.util.List;

import entity.Favorites;

public class FavoritesDAO extends AbstractDAO<Favorites> {

	public List<Favorites> findByUser(String id) {
		//
		String sql = "SELECT o FROM Favorites o WHERE o.user.id = ?0 AND o.video.isActive = 1"
				+ " ORDER BY o.viewedDate DESC";
		return super.findMany(Favorites.class, sql, id);
	}

	public List<Favorites> findByUserAndIsLiked(String id) {
		//
		String sql = "SELECT o FROM Favorites o WHERE o.user.id = ?0 AND o.isLiked = 1"

				+ " AND o.video.isActive = 1"

				+ " AND o.video.isActive = 1" + " ORDER BY o.likedDate DESC";
		return super.findMany(Favorites.class, sql, id);
	}

	public Favorites findByUserIdAndVideoId(String userId, Integer videoId) {
		//
		String sql = "SELECT o FROM Favorites o  WHERE o.user.id = ?0 AND o.video.id = ?1"
				+ " AND o.video.isActive = 1";
		return super.findOne(Favorites.class, sql, userId, videoId);
	}
}
