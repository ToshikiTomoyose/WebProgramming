
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDao;
import model.Userbean;

/**
 * Servlet implementation class Userguide
 */
@WebServlet("/Userguide")
public class Userguide extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userguide() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		UserDao dao = new UserDao();
		String id = request.getParameter("id");
		Userbean ub = dao.findByUserGuide(id);
		request.setAttribute("ub", ub);
//	確認用
//		for (Userbean userbean : ublist) {
//			System.out.println(userbean.getId());
//		}

				RequestDispatcher dispatcher =
				request.getRequestDispatcher("/WEB-INF/jsp/userguide.jsp");
				 dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
