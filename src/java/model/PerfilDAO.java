package model;

import java.sql.PreparedStatement;

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
   
   
    
}
