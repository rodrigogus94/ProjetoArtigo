package DAO;

import java.util.List;

import Classes.Artigos;

public interface DAO {
	
	
	Artigos inserir(Artigos a);
	void alterar(Artigos a);
	int excluir(int... ids);
	Artigos pesquisar(int id);
	List<Artigos> listarTodos();
}
