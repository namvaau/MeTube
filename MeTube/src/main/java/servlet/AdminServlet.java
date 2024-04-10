package servlet;

import java.io.IOException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.VideoDAO;
import entity.Video;
import services.VideoService;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet({"/AdminServlet","/upload","/update","/delete","/new","/fill"})
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VideoService videoService = new VideoService(); // Inject IoC
	private VideoDAO videoDAO = new VideoDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String uri = request.getRequestURI();

		if(uri.contains("upload")) {
			doGetUpload(session,uri, request, response);
		}
		
		

		if(uri.contains("update")) {
			doGetUpdate(session,uri, request, response);
		}
		

		

		if(uri.contains("delete")) {
			doGetDelete(session,uri, request, response);
		}
		
		
		

		if(uri.contains("new")) {
			doGetNew(session,uri, request, response);
		}
		
		
		if(uri.contains("fill")) {
			
			
			
			doGetFill(session, uri, request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
	}
	
	
	private String extractYoutubeVideoId(String youtubeUrl) {
	    Pattern pattern = Pattern.compile(
	            "(?<=watch\\?v=|/videos/|embed\\/|youtu.be\\/|\\/v\\/|\\/e\\/|watch\\?v%3D|watch\\?feature=player_embedded&v=|%2Fvideos%2F|%2Fembed%2F%2F|youtu.be%2F|%2Fv%2F)[^#\\&\\?\\n]*",
	            Pattern.CASE_INSENSITIVE);
	    Matcher matcher = pattern.matcher(youtubeUrl);
	    if (matcher.find()) {
	        return matcher.group();
	    }
	    return null; // Trả về null nếu không tìm thấy ID
	}
	
	
	private void doGetUpload(HttpSession session, String href, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Video> lst = videoService.getOtherVideos(href);
		req.setAttribute("videos", lst);
		
		String linkYoutube = req.getParameter("youtubeLink");
		String title = req.getParameter("title");
		String description = req.getParameter("description");

		 // Giả sử href chứa URL YouTube
	    String youtubeId = extractYoutubeVideoId(linkYoutube); // Trích xuất ID
	    if (youtubeId != null) {
	    	
	    	
	    	Video video = new Video();
	    	video.setTitle(title);
	    	video.setHref(youtubeId);
	    	video.setPoster("https://img.youtube.com/vi/"+youtubeId+"/hqdefault.jpg");
	    	video.setViews(0);
	    	video.setDescription(description);
	    	video.setShares(0);
	    	video.setIsActive(true);
	    	
	    	videoDAO.create(video);
	    		
	    	
	    } else {
	        // Xử lý trường hợp không tìm thấy ID từ URL
	    	System.out.println("ko tim thay");
	    }
		
		
		

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/admin.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	
	private void doGetUpdate(HttpSession session, String href, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Video> lst = videoService.getOtherVideos(href);
		req.setAttribute("videos", lst);
		
	

		

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/admin.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	
	private void doGetDelete(HttpSession session, String href, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Video> lst = videoService.getOtherVideos(href);
		req.setAttribute("videos", lst);
		
	
		System.out.println(req.getParameter("youtubeLink"));
		
		String href2 = extractYoutubeVideoId(req.getParameter("youtubeLink"));
		
		videoService.delete(href2);
		

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/admin.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	
	private void doGetNew(HttpSession session, String href, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Video> lst = videoService.getOtherVideos(href);
		req.setAttribute("videos", lst);
		
	

		

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/admin.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	
	private void doGetFill(HttpSession session, String href, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Video> lst = videoService.getOtherVideos(href);
		req.setAttribute("videos", lst);
		
	
		String linkYoutube = "https://www.youtube.com/watch?v="+req.getParameter("href");
		String title = req.getParameter("title");
		String description = req.getParameter("description");
		String id = req.getParameter("id");
		
		req.setAttribute("linkYoutube", linkYoutube);
		req.setAttribute("title", title);
		req.setAttribute("description", description);
		req.setAttribute("id", id);
		

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/admin.jsp");
		requestDispatcher.forward(req, resp);
	}
	

}
