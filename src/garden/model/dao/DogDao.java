package garden.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import garden.model.vo.DogVo;
import oracle.net.aso.r;

public class DogDao {

   Connection conn; //database의 연결 정보
   PreparedStatement ps; // 문자열로 되어 있는 sql문장을 sql 실행문장
   ResultSet rs; // select문의 실행결과
   
   public DogDao() {
      conn = new Application().getConn();
   }
   
   public List<DogVo> select(){    
      List<DogVo> list = new ArrayList<DogVo>();
      
      try {
               
         String sql = " select * from dog order by dog_serial asc ";
      
         ps = conn.prepareStatement(sql);
         
         
         
         rs = ps.executeQuery();
         
         while(rs.next()) {
            DogVo vo = new DogVo();
            vo.setDog_serial(rs.getInt("dog_serial"));
            vo.setDog_group(rs.getString("dog_group"));
            vo.setDog_name(rs.getString("dog_name"));
            vo.setDog_breed(rs.getString("dog_breed"));
            vo.setDog_gender(rs.getString("dog_gender"));
            vo.setDog_age(rs.getString("dog_age"));
            vo.setDog_weight(rs.getString("dog_weight"));
            vo.setDog_mbti(rs.getString("dog_mbti"));
            vo.setDog_mbti_char(rs.getString("dog_mbti_char"));
            vo.setDog_photo1(rs.getString("dog_photo1"));
            vo.setDog_photo2(rs.getString("dog_photo2"));
            vo.setDog_photo3(rs.getString("dog_photo3"));
            vo.setDog_photo4(rs.getString("dog_photo4"));            
            vo.setDog_story(rs.getString("dog_story"));
            
            list.add(vo);
      }
      
      
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         disConn();         
         return list;   
      }   
   }
   
   
   public DogVo view(String name) {
      DogVo vo = new DogVo();
      try {
         
         String sql = " select * from dog where dog_name = ? ";
         ps = conn.prepareStatement(sql);
         ps.setString(1, name);
         rs = ps.executeQuery();
         
         if(rs.next()) {
            vo.setDog_serial(rs.getInt("dog_serial"));
            vo.setDog_group(rs.getString("dog_group"));
            vo.setDog_name(rs.getString("dog_name"));
            vo.setDog_breed(rs.getString("dog_breed"));
            vo.setDog_gender(rs.getString("dog_gender"));
            vo.setDog_age(rs.getString("dog_age"));
            vo.setDog_weight(rs.getString("dog_weight"));
            vo.setDog_mbti(rs.getString("dog_mbti"));
            vo.setDog_mbti_char(rs.getString("dog_mbti_char"));
            vo.setDog_photo1(rs.getString("dog_photo1"));
            vo.setDog_photo2(rs.getString("dog_photo2"));
            vo.setDog_photo3(rs.getString("dog_photo3"));
            vo.setDog_photo4(rs.getString("dog_photo4")); 
            vo.setDog_story(rs.getString("dog_story"));
         }         
         
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         disConn();
         return vo;
      }
      
      
   }
   
   
   
   /*
   
   
   insert(){   }
   
   update(){   }
   
   delete(){   }
   */
   
   
   public void disConn() {
      try {
         conn.close();
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
}