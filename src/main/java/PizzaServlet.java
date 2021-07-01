import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.getRequestDispatcher("/pizza-order.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
            req.getRequestDispatcher("/pizza-order.jsp").forward(req, resp);
            String crustType = req.getParameter("crustType");
            String pizzaSize = req.getParameter("pizza-size");
            String[] toppings = req.getParameterValues("toppings");
            String deliveryAddress = req.getParameter("delivery-address");
            System.out.println(crustType);
            System.out.println(pizzaSize);
            for(String topping : toppings) {
                System.out.println(topping);
            }
            System.out.println(deliveryAddress);
    }
}