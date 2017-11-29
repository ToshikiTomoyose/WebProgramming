
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDao;
import model.Userbean;

/**
 * Servlet implementation class User1lan
 */
@WebServlet("/UserList")
public class UserList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UserDao dao = new UserDao();
		List<Userbean> ublist =  dao.findAll();
		request.setAttribute("userlist", ublist);
//	確認用
//		for (Userbean userbean : ublist) {
//			System.out.println(userbean.getLogin_id());
//		}
		RequestDispatcher dispatcher =
		request.getRequestDispatcher("/WEB-INF/jsp/UserList.jsp");
		dispatcher.forward(request, response);


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		UserDao dao = new UserDao();
		String name = request.getParameter("name");
		List<Userbean> ublist  =null;

		if (name.length() == 0) {
			ublist = dao.findAll();
			} else {
				ublist = dao.FindbyUser(name) ;
			}

		request.setAttribute("userlist", ublist);

		RequestDispatcher dispatcher =
		request.getRequestDispatcher("/WEB-INF/jsp/UserList.jsp");
		dispatcher.forward(request, response);
//	確認用
//		for (Userbean userbean : ublist) {
//			System.out.println(userbean.getLogin_id());
//		}
	}

}
