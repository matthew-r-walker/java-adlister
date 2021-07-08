import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("isAdmin") != null) {
            response.sendRedirect("/secret-admin-page");
            return;
        }
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean isAdmin = username.equals("admin") && password.equals("123");
        boolean user = username.equals("codytheduck") && password.equals("123");

        HttpSession session = request.getSession();

        if (isAdmin) {
            session.setAttribute("isAdmin", true);
            session.setAttribute("user", username);
            response.sendRedirect("/secret-admin-page");
        } else if (user) {
            session.setAttribute("user", username);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }




        // sessions and cookies lec
//        // Set the session object to a var based on the httpsession class.
//        HttpSession session = request.getSession();
//
//        String darkMode = request.getParameter("color");
//        // set the dark theme attr on the session so that it is remembered every time we log in.
//        session.setAttribute("darkMode", darkMode);
//
//        // on a diff servlet(profile page)
//        // with our getAttribute method, our return is always a generic object type.
//        // therefore we need to explicitly cast the object to the correct type.
//        session.getAttribute("darkMode");
//        String darkSelected = (String) session.getAttribute("darkMode");
//

        // Mainly used for logging out of an application
//        // to remove an attribute
//        session.removeAttribute("darkMode");
//
//        // destroys the session
//        session.invalidate();
    }
}
