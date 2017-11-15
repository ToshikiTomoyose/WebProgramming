
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
		String pass = request.getParameter("pass");
		String login_id = request.getParameter("login_id");
		String name = request.getParameter("name");
		String birth_date = request.getParameter("birth_date");
		String create_date = request.getParameter("create_date");
		String update_date = request.getParameter("update_date");
		System.out.println(id);
		System.out.println(login_id);
		System.out.println(pass);
		System.out.println(name);
		Userbean usguide =  dao.findByUserGuide(login_id, pass);

		request.setAttribute("usguide", usguide);

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
