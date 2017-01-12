/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.caelum.agenda.filtro;

import br.com.caelum.agenda.jdbc.ConnectionFactory;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author gilvan
 */
public class FiltroConexao implements Filter {

    @Override
    public void init(FilterConfig filterConfig) {   
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        try {
            Connection connection = new ConnectionFactory().getConnection();
            
            request.setAttribute("conexao", connection);
            
            chain.doFilter(request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    public void destroy() {
    }
    
}
