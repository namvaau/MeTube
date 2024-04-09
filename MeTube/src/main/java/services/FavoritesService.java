package services;

import java.sql.Timestamp;
import java.util.List;

import dao.FavoritesDAO;
import entity.Favorites;
import entity.User;
import entity.Video;

public class FavoritesService {
	private FavoritesDAO dao;

	private VideoService videoService = new VideoService();

	public FavoritesService() {
		dao = new FavoritesDAO();
	}

	public List<Favorites> findByUser(String id) {
		//
		return dao.findByUser(id);
	}

	public List<Favorites> findByUserAndIsLiked(String id) {
		//
		return dao.findByUserAndIsLiked(id);
	}

	public Favorites findByUserIdAndVideoId(String userId, Integer videoId) {
		//
		return dao.findByUserIdAndVideoId(userId, videoId);
	}

	public Favorites create(User user, Video video) {
		//
		Favorites existHistory = findByUserIdAndVideoId(user.getId(), video.getId());
		if (existHistory == null) {
			existHistory = new Favorites();
			existHistory.setUser(user);
			existHistory.setVideo(video);
			existHistory.setIsLiked(Boolean.FALSE);
			return dao.create(existHistory);

		}
		return existHistory;
	}

	public boolean updateLikeOrUnlike(User user, String videoHref) {
		//
		Video video = videoService.findByHref(videoHref);
		Favorites existHistory = findByUserIdAndVideoId(user.getId(), video.getId());

		if (existHistory.getIsLiked() == Boolean.FALSE) {
			existHistory.setIsLiked(Boolean.TRUE);
			existHistory.setLikedDate(new Timestamp(System.currentTimeMillis()));
		} else {
			existHistory.setIsLiked(Boolean.FALSE);
			existHistory.setLikedDate(null);
		}

		Favorites updateHistory = dao.update(existHistory);
		return updateHistory != null ? true : false;
	}

}
