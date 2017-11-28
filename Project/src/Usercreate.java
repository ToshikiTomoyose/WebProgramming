
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDao;

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

		RequestDispatcher dispatcher =
		request.getRequestDispatcher("/WEB-INF/jsp/usercreate.jsp");
		 dispatcher.forward(request, response);

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		確認用
//		System.out.println(111111);
		request.setCharacterEncoding("UTF-8");

		String logid = request.getParameter("clogid");
		String name = request.getParameter("cname");
		String birthdate = request.getParameter("cbirthd");
		String pass = request.getParameter("cpass");
		String subpass = request.getParameter("conpass");
		String createdate = request.getParameter("ccdate");

			if(pass.equals(subpass)) {
				UserDao dao = new UserDao();
				 dao.Usercreate(logid, name,  birthdate, pass, createdate);
				 response.sendRedirect("UserList");
			}else {
				String msg = "エラー！";
				request.setAttribute("errMsg", msg);
				 RequestDispatcher dispatcher =
							request.getRequestDispatcher("/WEB-INF/jsp/usercreate.jsp");
							 dispatcher.forward(request, response);


			}
	}

}
