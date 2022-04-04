
package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ServletControlador", urlPatterns = {"/ServletControlador"})

public class ServletControlador extends HttpServlet {


     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        switch (accion) {
            case "jugador":
                initJugador(request, response);
                break;
            case "bono":
                initBono(request, response);
                break;
            case "partido":
                initPartido(request, response);
                break;
            case "volver":
                request.setAttribute("opcion", "inicio");
                request.getRequestDispatcher("init.jsp").forward(request, response);
            break;
        }
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    
    private void initJugador(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         request.setAttribute("opcion", "jugador");
         request.getRequestDispatcher("init.jsp").forward(request, response);
    }
    
    private void initBono(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         request.setAttribute("opcion", "bono");
         request.getRequestDispatcher("init.jsp").forward(request, response);
    }
    
    private void initPartido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         request.setAttribute("opcion", "partido");
         request.getRequestDispatcher("init.jsp").forward(request, response);
    }
   
    
   

}
