package DAO;

import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import Classes.Artigos;



public class DAOImpl implements DAO {
	
	
	private List<Artigos> dados;

	public DAOImpl() {

		this.dados = new ArrayList<Artigos>();
	}

	public Artigos inserir(Artigos a) {
		for (Artigos artigo : dados) {
			if (artigo.getId() == a.getId()) {
				return null;
			}
		}

		dados.add(a);
		return a;
	}

	public void alterar(Artigos a) {
		for (Artigos artigo : dados) {
			if(artigo.getId() != a.getId()) {
				JOptionPane.showMessageDialog(null, "O Id não tem animal cadastrado, gostaria de cadastrar?");
			}else {
				JOptionPane.showMessageDialog(null, "Alterado com sucesso!");
			}
			
		}
		
	}

	public int excluir(int... ids) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Artigos pesquisar(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Artigos> listarTodos() {
		// TODO Auto-generated method stub
		return null;
	}


	

}
