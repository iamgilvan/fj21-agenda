
package br.com.caelum.mvc.logica;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica{
    /**
     *
     * @param req
     * @param res
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void executa(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        System.out.println("Aplicando a lógia e redirecionando...");
        
        RequestDispatcher rd = req.getRequestDispatcher("primeira-logica.jsp");
        rd.forward(req, res);
        
    }
    
}
