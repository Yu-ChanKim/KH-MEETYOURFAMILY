package com.join;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
			sql="insert into member (userId,userPwd,userName,";
			sql+="userBirth,userTel,userAnswer,userGender) values (?,?,?,?,?,?,?)";

			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getUserPwd());
			pstmt.setString(3, dto.getUserName());
			pstmt.setString(4, dto.getUserBirth());
			pstmt.setString(5, dto.getUserTel());
			pstmt.setString(6, dto.getUserAnswer());
			pstmt.setString(7, dto.getUserGender());

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
			sql="select userId,userPwd,userName,to_char(userBirth,'YYYY-MM-DD') userBirth,userTel, userAnswer, userGender";
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

}
