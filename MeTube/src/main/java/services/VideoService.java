package services;

import java.util.List;

import dao.VideoDAO;
import entity.Video;

//Lop DAO va Controller k xu li Logic ma lop Servide se xu li no!
public class VideoService {

	private VideoDAO dao;

	// New hàm tạo để có the goi no
	public VideoService() {
		dao = new VideoDAO();
	}

	public Video findByID(Integer id) {
		//
		return dao.findByID(id);
	}

	public Video findByHref(String href) {
		//
		return dao.findByHref(href);
	}

	public List<Video> findAll() {
		//
		return dao.findAll();
	}

	public List<Video> findAll(int pageNumber, int pageSize) {
		//
		return dao.findAll(pageNumber, pageSize);
	}

	public List<Video> getOtherVideos(String href) {
		String hql = "SELECT o FROM Video o WHERE o.href != ?0 && o.isActive = 1";
		return dao.findMany(Video.class, hql, href);
	}

	public Video create(Video entity) {
		//
		entity.setIsActive(Boolean.TRUE);
		entity.setViews(0);
		entity.setShares(0);
		return dao.create(entity);
	}

	public Video update(Video entity) {
		//
		return dao.update(entity);
	}

	public Video delete(String href) {
		//
		Video entity = findByHref(href);
		entity.setIsActive(Boolean.FALSE);
		return dao.update(entity);
	}
}
