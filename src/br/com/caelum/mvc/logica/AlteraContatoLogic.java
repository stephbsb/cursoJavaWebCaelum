package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AlteraContatoLogic {
	
	public String executa(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		
		long id = Long.parseLong(req.getParameter("id"));
		
		Contato contato = new Contato();
		contato.setId(id);
				
		ContatoDao dao = new ContatoDao();
		
		contato = dao.BuscarPorId(contato);
				
		req.setAttribute("contato",contato);
		
		return "mvc?logica=ListaContatosLogic";
	
	}	
	
}
