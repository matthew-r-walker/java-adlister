import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CountPageServlet", urlPatterns = "/count")
public class CountPageServlet extends HttpServlet {

    private int count = 0;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        out.println("<h1>Number of page views: " + ++count + "</h1>");

        boolean reset = req.getParameter("reset").equalsIgnoreCase("yes");

        if (reset) {
            count = 0;
        }
    }
}