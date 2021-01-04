package garden.admin.model.dao;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import garden.admin.controller.FileUpload;
import garden.model.dao.Application;
import garden.model.vo.DogVo;



public class DogAdminDao {

   Connection conn; //database의 연결 정보
   PreparedStatement ps; // 문자열로 되어 있는 sql문장을 sql 실행문장
   ResultSet rs; // select문의 실행결과
   
   public DogAdminDao() {
      conn = new Application().getConn();
   }
      
   
   public List<DogVo> select(){
      
      List<DogVo> list = new ArrayList<DogVo>();
        
      try {
                           
          String sql = " select * from dog order by dog_serial asc";            
         
          ps = conn.prepareStatement(sql);           
          rs = ps.executeQuery();
            
          while(rs.next()) {
             DogVo vo = new DogVo();
              vo.setDog_serial(rs.getInt("dog_serial"));
              vo.setDog_group(rs.getString("dog_group"));
              vo.setDog_name(rs.getString("dog_name"));
              vo.setDog_breed(rs.getString("dog_breed"));
              vo.setDog_mbti(rs.getString("dog_mbti"));
               
              list.add(vo);
         }
       
         } catch (Exception e) {
            e.printStackTrace();
         }finally {
            disConn();         
            return list;   
         }   
      }  
      
   public String insert(DogVo vo) {
         String msg = "강아지 정보가 정상적으로 저장되었습니다.";
         try {
            String sql = " insert into dog(dog_serial, dog_group, dog_name, dog_breed, dog_gender, dog_age, dog_weight, dog_mbti, dog_mbti_char, dog_photo1, dog_photo2, dog_photo3, dog_photo4, dog_story)"
                       + " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, vo.getDog_serial());
            ps.setString(2, vo.getDog_group());
            ps.setString(3, vo.getDog_name());
            ps.setString(4, vo.getDog_breed());
            ps.setString(5, vo.getDog_gender());
            ps.setString(6, vo.getDog_age());
            ps.setString(7, vo.getDog_weight());
            ps.setString(8, vo.getDog_mbti());
            ps.setString(9, vo.getDog_mbti_char());
            ps.setString(10, vo.getDog_photo1());
            ps.setString(11, vo.getDog_photo2());
            ps.setString(12, vo.getDog_photo3());
            ps.setString(13, vo.getDog_photo4());
            ps.setString(14, vo.getDog_story());
            
            int rowCnt = ps.executeUpdate();
            if(rowCnt<1) {
               msg = "강아지 정보 입력 중 오류 발생.";
               throw new Exception(msg);
            }
         
             }catch(Exception ex) {
            msg = ex.getMessage();
            
            File file1 = new File(FileUpload.saveDir + vo.getDog_photo1());
            if(file1.exists()) {
               file1.delete();
            }
            File file2 = new File(FileUpload.saveDir + vo.getDog_photo2());
            if(file2.exists()) {
               file2.delete();
            }
            File file3 = new File(FileUpload.saveDir + vo.getDog_photo3());
            if(file3.exists()) {
               file3.delete();
            }
            File file4 = new File(FileUpload.saveDir + vo.getDog_photo4());
            if(file4.exists()) {
               file4.delete();
            }
            }finally {
               disConn();
               return msg;
            }
   }

   public DogVo view(int serial) {
      DogVo vo = new DogVo();
      try {   
         String sql = " select * from dog where dog_serial = ? ";
      
         ps = conn.prepareStatement(sql);
         ps.setInt(1, serial);
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
  
   public String update(DogVo vo) {
      String msg = "강아지 정보가 정상적으로 수정 되었습니다.";
      
      try {
      
         String sql = " update dog set dog_group=?, dog_name=?, dog_breed=? "
                  + ", dog_gender=?, dog_age=?, dog_weight=?, dog_mbti=? "
                  + ", dog_mbti_char=?, dog_story=? "
                  + ", dog_photo1=?, dog_photo2=?, dog_photo3=?, dog_photo4=? "
                    + " where dog_serial=? ";
         
         ps = conn.prepareStatement(sql);
         ps.setString(1, vo.getDog_group());
         ps.setString(2, vo.getDog_name());
         ps.setString(3, vo.getDog_breed());
         ps.setString(4, vo.getDog_gender());
         ps.setString(5, vo.getDog_age());
         ps.setString(6, vo.getDog_weight());
         ps.setString(7, vo.getDog_mbti());
         ps.setString(8, vo.getDog_mbti_char());
         ps.setString(9, vo.getDog_story());
         ps.setString(10, vo.getDog_photo1());
         ps.setString(11, vo.getDog_photo2());
         ps.setString(12, vo.getDog_photo3());
         ps.setString(13, vo.getDog_photo4());
         ps.setInt(14, vo.getDog_serial());
         
         int rowCnt = ps.executeUpdate();
         if(rowCnt < 1) {
            msg = "강아지 정보 수정 중 오류 발생";
            //throw new Exception(msg);
         }
         
         // 이미지가 수정된 경우 기존 파일 삭제
         if(vo.getDog_photo1() != null && !vo.getDog_photo1().equals("")) {
            File file1 = new File(FileUpload.saveDir + vo.getDelFile1());
            if(file1.exists()) {
               file1.delete();
            }
         }  
         if(vo.getDog_photo2() != null && !vo.getDog_photo2().equals("")) {
             File file2 = new File(FileUpload.saveDir + vo.getDelFile2());
             if(file2.exists()) {
                file2.delete();
             }
          }    
         if(vo.getDog_photo3() != null && !vo.getDog_photo3().equals("")) {
             File file3 = new File(FileUpload.saveDir + vo.getDelFile3());
             if(file3.exists()) {
                file3.delete();
             }
          }    
         if(vo.getDog_photo4() != null && !vo.getDog_photo4().equals("")) {
             File file4 = new File(FileUpload.saveDir + vo.getDelFile4());
             if(file4.exists()) {
                file4.delete();
             }
          }    
         
   } catch (Exception e) {
      msg  = e.getMessage();
   }finally {
      try {
         ps.close();
         conn.close();

      } catch (SQLException e) {
         e.printStackTrace();
      }      
      return msg;
   }
   }
   
   public String delete(DogVo vo) {
	   String msg = "강아지 정보가 정상적으로 삭제되었습니다.";
	   
	   try {
		String sql = "delete from dog where dog_serial = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, vo.getDog_serial());
		
		int rowCnt = ps.executeUpdate();
		if(rowCnt<1) {
			throw new Exception("강아지 정보 삭제중 오류 발생");
		}
		
		File file1 = new File(FileUpload.saveDir + vo.getDelFile1());
		if(file1.exists()) {
			file1.delete();
		}
		File file2 = new File(FileUpload.saveDir + vo.getDelFile2());
		if(file2.exists()) {
			file2.delete();
		}
		File file3 = new File(FileUpload.saveDir + vo.getDelFile3());
		if(file3.exists()) {
			file3.delete();
		}
		File file4 = new File(FileUpload.saveDir + vo.getDelFile4());
		if(file4.exists()) {
			file4.delete();
		}
	} catch (Exception ex) {
		msg = ex.getMessage();
	}finally {
		disConn();
		return msg;
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