package controlador.estudiante;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "EstudianteServlet", urlPatterns = {"/EstudianteServlet"})
public class EstudianteServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String nom=request.getParameter("txtnombre");
            String pais=request.getParameter("listapais");
            String curso[]=request.getParameterValues("listcurso");
            String n1=request.getParameter("txtn1");
            String n2=request.getParameter("txtn2");
            String prom=request.getParameter("txtpromedio");
            String esp=request.getParameter("listespecialiad");
            String sex=request.getParameter("rdsexo");
            //encabezado de la tabla
            out.println("<tr>");
            out.println("<th>NOMBRE</th>");
            out.println("<th>PAIS</th>");
            out.println("<th>CURSOS</th>");
            out.println("<th>NOTA1</th>");
            out.println("<th>NOTA2</th>");
            out.println("<th>PROMEDIO</th>");
            out.println("<th>ESPECIALIDAD</th>");
            out.println("<th>SEXO</th>");
            out.println("</tr>");
            
            //enviar datos a la tabla
            out.println("<tr>");
            out.println("<td>"+nom+"</td>");
            out.println("<td>"+pais+"</td>");
       
            
           out.println("<td><ul>");
            for (int i = 0; i < curso.length; i++) {
                
               out.println("<li>"+curso[i]+"</li>");
               
            }
            out.println("</ul></td>");//fin de la lista curso
            out.println("<td>"+n1+"</td>");
            out.println("<td>"+n2+"</td>");
            out.println("<td>"+prom+"</td>");
            out.println("<td>"+esp+"</td>");
            out.println("<td>"+sex+"</td>");
            
            out.println("</tr>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
