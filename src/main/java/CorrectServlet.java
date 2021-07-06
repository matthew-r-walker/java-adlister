import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CorrectServlet", urlPatterns = "/correct")
public class CorrectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String outcome = "You won! You guessed the correct number.";
        req.setAttribute("outcome", outcome);
        String out = "Winner!";
        req.setAttribute("out", out);
        req.getRequestDispatcher("/outcomeview.jsp").forward(req, resp);
    }
}