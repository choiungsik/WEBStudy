package program;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bigDAO;
import model.bigDTO;

@WebServlet("/LoginProgram")
public class LoginProgram extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		bigDAO dao = new bigDAO();
		bigDTO dto = new bigDTO(id, pw);

		String name = dao.login(dto);

		if (name != null) {
			response.sendRedirect("loginSuccess.jsp?name=" + URLEncoder.encode(name, "EUC-KR"));
		} else {
			response.sendRedirect("loginFail.jsp");
		}
	}

}
