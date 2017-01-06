package br.com.caelum.agenda.exception;

public class DAOException extends RuntimeException {
    public DAOException(Throwable couse){
        super(couse);
    }
    
    
}
