

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
 * Servlet implementation class Usercreate
 */
@WebServlet("/Usercreate")
public class Usercreate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Usercreate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		String logid = request.getParameter("clogid");
		String pass = request.getParameter("cpass");
		String cpass = request.getParameter("cpass");
		String name = request.getParameter("cname");
		String birthdate = request.getParameter("cbirthd");
		String createdate = request.getParameter("ccdate");

		UserDao dao = new UserDao();
		Userbean cub = dao.Usercreate(null, logid, pass, cpass, name, birthdate, createdate);

		if(cpass == null) {
		String msg = "作り直せ！";
		request.setAttribute("errMsg", msg);

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/WEB-INF/jsp/usercreate.jsp");
				 dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher =
					request.getRequestDispatcher("/WEB-INF/jsp/UserList.jsp");
					 dispatcher.forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
