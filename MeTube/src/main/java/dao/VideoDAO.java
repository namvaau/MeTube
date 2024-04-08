package dao;

import java.util.List;

import entity.Video;

public class VideoDAO extends AbstractDAO<Video> {

	public Video findByID(Integer id) {
		//
		return super.findById(Video.class, id);
	}

	public Video findByHref(String href) {
		//
		String sql = "SELECT o FROM Video o WHERE o.href = ?0";
		return super.findOne(Video.class, sql, href);
	}

	public List<Video> findAll() {
		//
		return super.findAll(Video.class, true);
	}

	public List<Video> findAll(int pageNumber, int pageSize) {
		// Write Comment
		return super.findAll(Video.class, true, pageNumber, pageSize);
	}
	
	
}
