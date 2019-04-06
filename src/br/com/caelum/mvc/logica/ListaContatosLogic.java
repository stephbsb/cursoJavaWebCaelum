package br.com.caelum.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class ListaContatosLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		
		//Monta a lista de contatos
		List<Contato> contatos = new ContatoDao().getLista();
		
		//Guarda a lista no request
		req.setAttribute("contatos", contatos);
		
		return "/WEB-INF/jsp/lista-contatos.jsp";
	
	}	
}
