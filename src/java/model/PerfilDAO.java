package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PerfilDAO extends DataBaseDAO {
    
   public void inserir(Perfil p) throws Exception {
       String sql = "INSERT INTO perfil (nome, descricao) VALUES (?,?)";
       this.conectar();
       PreparedStatement ps = conn.prepareStatement(sql);
       ps.setString(1, p.getNome());
       ps.setString(2, p.getDescricao());
       ps.execute();
       this.desconectar();
   }
   
   public ArrayList<Perfil> listar() throws Exception {
       ArrayList<Perfil> perfis = new ArrayList<Perfil>();              
       
       String sql  = "SELECT * FROM perfil";
       this.conectar();
       PreparedStatement ps = conn.prepareStatement(sql);
       ResultSet rs = ps.executeQuery();
       
       while(rs.next()) {
           Perfil p = new Perfil();
           p.setId(rs.getInt("id"));
           p.setNome(rs.getString("nome"));
           p.setDescricao(rs.getString("descricao"));
           
           perfis.add(p);
       }
       this.desconectar();
       return perfis;
   }
    
   public void excluir(int id) throws Exception {
       
   }
   
}
