package com.join;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

   private Connection conn;

   public MemberDAO(Connection conn){
      this.conn=conn;
   }

   //회원가입
   public int insertData(MemberDTO dto){
      int result=0;
      PreparedStatement pstmt=null;
      String sql;

       try {
            sql="insert into member (userId,userPwd,userName,userBirth,userTel,userAnswer,userGender,zipcode,address1,address2) values (?,?,?,?,?,?,?,?,?,?)";
           

            pstmt=conn.prepareStatement(sql);

            pstmt.setString(1, dto.getUserId());
            pstmt.setString(2, dto.getUserPwd());
            pstmt.setString(3, dto.getUserName());
            pstmt.setString(4, dto.getUserBirth());
            pstmt.setString(5, dto.getUserTel());
            pstmt.setString(6, dto.getUserAnswer());
            pstmt.setString(7, dto.getUserGender());
            pstmt.setString(8, dto.getZipcode());
            pstmt.setString(9, dto.getAddress1());
            pstmt.setString(10, dto.getAddress2());

         result=pstmt.executeUpdate();

         pstmt.close();

      } catch (Exception e) {
         System.out.println(e.toString());
      }

      return result;
   }

   //회원 가져오기(한명의 회원찾기)
   public MemberDTO getReadData(String userId){
      MemberDTO dto=null;
      PreparedStatement pstmt=null;
      ResultSet rs=null;
      String sql;

       try {
            sql="select userId,userPwd,userName,to_char(userBirth,'YYYY-MM-DD') userBirth,userTel,userAnswer,userGender,zipcode,address1,address2 ";
            sql+="from member where userId=?";

            pstmt=conn.prepareStatement(sql);

            pstmt.setString(1, userId);

            rs=pstmt.executeQuery();

            if(rs.next()){
               dto= new MemberDTO();

               dto.setUserId(rs.getString("userId"));
               dto.setUserPwd(rs.getString("userPwd"));
               dto.setUserName(rs.getString("userName"));
               dto.setUserBirth(rs.getString("userBirth"));
               dto.setUserTel(rs.getString("userTel"));
               dto.setUserAnswer(rs.getString("userAnswer"));
               dto.setUserGender(rs.getString("userGender"));
               dto.setZipcode(rs.getString("zipcode"));
               dto.setAddress1(rs.getString("address1"));
               dto.setAddress2(rs.getString("address2"));
               
              

            }

         rs.close();
         pstmt.close();

      } catch (Exception e) {
         System.out.println(e.toString());
      }

      return dto;
   }

   //수정
   public int updateData(MemberDTO dto) {

      int result = 0;

      PreparedStatement pstmt = null;
      String sql;

      try {

         sql = "update member set userPwd=?,userBirth=?,userTel=? ";
         sql+= "where userId=?";

         pstmt = conn.prepareStatement(sql);

         pstmt.setString(1, dto.getUserPwd());
         pstmt.setString(2, dto.getUserBirth());
         pstmt.setString(3, dto.getUserTel());
         pstmt.setString(4, dto.getUserId());

         result = pstmt.executeUpdate();

         pstmt.close();

      } catch (Exception e) {
         System.out.println(e.toString());
      }
      return result;

   }
   
   
   //수정한부분
   //아이디 찾기
   public String findId(String userName, String userAnswer) {
      String id = null;
      try {
         String sql = "select userId" 
               + " from member" 
               + " where userName = ? and" 
               + " userAnswer = ?";
         PreparedStatement pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, userName);
         pstmt.setString(2, userAnswer);

         ResultSet rs = pstmt.executeQuery();
         String sql2 = "select company_id" + " from company_info" + " where name = ? and" + " email = ?";
         PreparedStatement pstmt2 = conn.prepareStatement(sql2);
         pstmt2.setString(1, userName);
         pstmt2.setString(2, userAnswer);
         ResultSet rs2 = pstmt2.executeQuery();

         if (rs.next())
            id = rs.getString("member_info.member_id");
         if (rs2.next())
            id = rs2.getString("company_info.company_id");
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return id;
   }
   
   
}