/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.caelum.mvc.logica;

import br.com.caelum.agenda.dao.ContatoDAO;
import br.com.caelum.agenda.modelo.Contato;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gilvan
 */
public class AlteraContatoLogic implements Logica
{

    @Override
    public void executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
        Contato contato = new Contato();
        long id = Long.parseLong(req.getParameter("id"));
        
        contato.setId(id);
        contato.setNome(req.getParameter("nome"));
        contato.setEndereco(req.getParameter("endereco"));
        contato.setEmail(req.getParameter("email"));
        
        //Converter a data de String para Calendar
        String dateEmTexto = req.getParameter("dataNascimento");
        Date date = (Date) new SimpleDateFormat("dd/MM/yyyy").parse(dateEmTexto); 
        Calendar dataNascimento = Calendar.getInstance();
        dataNascimento.setTime(date);
        
        contato.setDataNascimento(dataNascimento);
        
        ContatoDAO dao = new ContatoDAO();
        dao.altera(contato);
        
        RequestDispatcher rd = req.getRequestDispatcher("/lista-contatos-elegante.jsp");
        rd.forward(req, res);
        System.out.println("Alterando contato ... " + contato.getNome());
        
    }
    
}
