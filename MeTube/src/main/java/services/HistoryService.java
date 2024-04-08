package services;

import java.sql.Timestamp;
import java.util.List;

import dao.HistoryDAO;
import entity.History;
import entity.User;
import entity.Video;

public class HistoryService {
	private HistoryDAO dao;

	private VideoService videoService = new VideoService();

	public HistoryService() {
		dao = new HistoryDAO();
	}

	public List<History> findByUser(String username) {
		//
		return dao.findByUser(username);
	}

	public List<History> findByUserAndIsLiked(String username) {
		//
		return dao.findByUserAndIsLiked(username);
	}

	public History findByUserIdAndVideoId(Integer userId, Integer videoId) {
		//
		return dao.findByUserIdAndVideoId(userId, videoId);
	}

	public History create(User user, Video video) {
		//
		History existHistory = findByUserIdAndVideoId(user.getId(), video.getId());
		if (existHistory == null) {
			existHistory = new History();
			existHistory.setUser(user);
			existHistory.setVideo(video);
			existHistory.setViewedDate(new Timestamp(System.currentTimeMillis()));
			existHistory.setIsLiked(Boolean.FALSE);
			return dao.create(existHistory);

		}
		return existHistory;
	}

	public boolean updateLikeOrUnlike(User user, String videoHref) {
		//
		Video video = videoService.findByHref(videoHref);
		History existHistory = findByUserIdAndVideoId(user.getId(), video.getId());

		if (existHistory.getIsLiked() == Boolean.FALSE) {
			existHistory.setIsLiked(Boolean.TRUE);
			existHistory.setLikedDate(new Timestamp(System.currentTimeMillis()));
		} else {
			existHistory.setIsLiked(Boolean.FALSE);
			existHistory.setLikedDate(null);
		}

		History updateHistory = dao.update(existHistory);
		return updateHistory != null ? true : false;
	}

}
