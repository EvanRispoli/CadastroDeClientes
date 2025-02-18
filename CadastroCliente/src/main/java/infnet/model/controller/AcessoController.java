package infnet.model.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import infnet.model.domain.Cliente;
import infnet.model.domain.Usuario;
import infnet.model.repository.AcessoRepository;
import infnet.model.repository.ClienteRepository;


public class AcessoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AcessoController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.getRequestDispatcher("login.html").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		
		Usuario usuario = AcessoRepository.validar(email, senha);
		
		if (usuario != null) {
			request.setAttribute("listaClientes", ClienteRepository.obterLista());
			request.getRequestDispatcher("cliente/lista.jsp").forward(request, response);			
		} else { 
			request.setAttribute("msg", "A combina��o entre o utilizador e a senha est� incorreta");
			
			request.getRequestDispatcher("login.jsp").forward(request, response);
	}

}
}

