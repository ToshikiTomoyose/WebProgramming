

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
 * Servlet implementation class UserUpdate
 */
@WebServlet("/UserUpdate")
public class UserUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpdate() {
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

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/WEB-INF/jsp/userupdate.jsp");
				 dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				request.setCharacterEncoding("UTF-8");
				UserDao dao = new UserDao();


				String logid = request.getParameter("updlogid");
				String name = request.getParameter("updname");
				String birthdate = request.getParameter("updbirthd");
				String pass = request.getParameter("updpass");
				String cpass = request.getParameter("cupdpass");
				String update = request.getParameter("upddate");
				String id =  request.getParameter("upid");

				if(pass.equals(cpass)) {
					dao.UserUpdate(logid, name,  birthdate, pass, update, id);
					response.sendRedirect("UserList");

					}else {
						Userbean ub = dao.findByUserGuide(id);
						request.setAttribute("ub", ub);
						String msg = "入力された内容は正しくありません";
						request.setAttribute("errMsg", msg);
						RequestDispatcher dispatcher =
						request.getRequestDispatcher("/WEB-INF/jsp/userupdate.jsp");
						dispatcher.forward(request, response);

						}
			}
}
