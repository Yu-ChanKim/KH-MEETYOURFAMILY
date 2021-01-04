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
      
   
   public List<DogVo> page(String group){
      
      List<DogVo> list = new ArrayList<DogVo>();
         
         try {
                  
            String sql = " select * from dog where dog_group Like ? order by dog_serial asc";
         
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%"+group+"%");       
            
            rs = ps.executeQuery();
            
            while(rs.next()) {
               DogVo vo2 = new DogVo();
               vo2.setDog_serial(rs.getInt("dog_serial"));
               vo2.setDog_group(rs.getString("dog_group"));
               vo2.setDog_name(rs.getString("dog_name"));
               vo2.setDog_breed(rs.getString("dog_breed"));
               vo2.setDog_gender(rs.getString("dog_gender"));
               vo2.setDog_age(rs.getString("dog_age"));
               vo2.setDog_weight(rs.getString("dog_weight"));
               vo2.setDog_mbti(rs.getString("dog_mbti"));
               vo2.setDog_mbti_char(rs.getString("dog_mbti_char"));
               vo2.setDog_photo1(rs.getString("dog_photo1"));
               vo2.setDog_photo2(rs.getString("dog_photo2"));
               vo2.setDog_photo3(rs.getString("dog_photo3"));
               vo2.setDog_photo4(rs.getString("dog_photo4"));
               vo2.setDog_story(rs.getString("dog_story"));
               
               list.add(vo2);
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

   
   public void disConn() {
      try {
         rs.close();
         ps.close();
         conn.close();
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
}