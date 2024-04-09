package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.VideoDAO;
import dao.FavoritesDAO;
import entity.Favorites;
import entity.User;
import entity.Video;
import services.FavoritesService;
import services.VideoService;

@WebServlet(urlPatterns = "/video")
public class VideoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VideoService videoService = new VideoService();
	private FavoritesService historyService = new FavoritesService();
	private FavoritesDAO favoritesDAO = new FavoritesDAO();
	private VideoDAO videoDAO = new VideoDAO();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		String href = req.getParameter("id");
		HttpSession session = req.getSession();
		switch (action) {
		case "watch":
			doGetWatch(session, href, req, resp);
			break;
		case "like":
			doGetLike(session, href, req, resp);
			break;
		}
	}

	private void doGetWatch(HttpSession session, String href, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Video video = videoService.findByHref(href);
		req.setAttribute("video", video);
		List<Video> lst = videoService.getOtherVideos(href);
		req.setAttribute("videos", lst);
		User currrentUser = (User) session.getAttribute("currentUser");

		// Neu da dang nhap thi click vao xem thi them vao History - xem xem no da like
		// hay chua
		if (currrentUser != null) {
			Favorites history = historyService.create(currrentUser, video);
			req.setAttribute("flagLikedBtn", history.getIsLiked());
		}
		
//		favoritesDAO.increaseView(video.getId(), video.getViews());
		int currentView = video.getViews();
		currentView++;
		video.setViews(currentView);
		videoDAO.update(video);
		
		

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/video-detail.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetLike(HttpSession session, String href, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("application/json");
		User currrentUser = (User) session.getAttribute("currentUser");
		boolean result = historyService.updateLikeOrUnlike(currrentUser, href);
		if (result == true) {
			resp.setStatus(204);// Success nhma k tra ve data
		} else {
			resp.setStatus(400);// Loi
		}

	}
}