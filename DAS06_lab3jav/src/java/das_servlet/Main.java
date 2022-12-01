package das_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Main extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
         if (request.getParameter("calcSubmit") != null) {

            ResultForm obj = null;
            try {
                double a = Double.parseDouble(request.getParameter("a"));
                double b = Double.parseDouble(request.getParameter("b"));
                double x = Double.parseDouble(request.getParameter("x"));
                double y;
                
                if (x > 6) {
                    y = (6*x*x-a*b)/(2*x*x);
                } else {
                    y = 4*(x+a*a+b*b);
                }
                    obj = new ResultForm();
                    obj.setY(y);
                

                

                request.setAttribute("form", obj);
                getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
                return;
            } catch (Exception e) {
                getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
                return;
            }
        }
         
        getServletContext().getRequestDispatcher("/input.jsp").forward(request, response);
    }
}


