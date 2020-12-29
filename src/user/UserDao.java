package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

   private Connection conn;
   private PreparedStatement pstmt;
   private ResultSet rs;
   
   public UserDao() {
      try {
         
         String dbURL = "jdbc : oracle : //localhost : 9090 / KH-MEETYOURFAMILY";
         String dbID = "system";
         String dbPassword = "oracle";
         Class.forName("com.oracle.jdbc.Driver");      // Driver 는 oracle 의 접속할수 있는 역활을 할수 있는 하나의 라이브러리
         conn = DriverManager.getConnection(dbURL, dbID, dbPassword);   // user 연결해줌.
         
      }catch (Exception e) {
         e.printStackTrace();   // 오류가 무엇인지 출력해준다.  여기까지가 oracle에 접속할 수 있게 해주는 부분
      }
   }
   
   // 로그인을 시도 할 수 있는 함수 생성
   public int login(String userID, String userPassword) {
      String SQL = "SELECT userPassword FROM USER WHERE userID =?"; //실제로 db에 입력할 명령어를 sql 문장으로 만듬. 유저태이블에서 해당사용자의 비밀번호를 가져옴.
      try {
         pstmt = conn.prepareStatement(SQL);//PreparedStatement에 어떠한 정해진 sql 문장을 데이터배이스에 삽입하는 형식
         pstmt.setString(1, userID);
         rs = pstmt.executeQuery(); // 결과를 담을수 있는 하나의 객체에 실행할 값을 넣어줌.
         if(rs.next()) {   // 결과가 존재한다면 이부분이 실행됨.
            if(rs.getString(1).equals(userPassword)) 
                // 결과로 나온 userPassord를 받아서 접속을 시도한 userpassword와 동일 하다면 
                  return 1; // return 1 을 해서 로그인 성공 값을 반환
                     
               // 결과가 존재하지 않는다면 이부분에서 실행됨.
               else
                  return 0;
            }   // 비밀번호 불일치
         return -1; // 아이디가 없음.
      }catch (Exception e) {
         e.printStackTrace(); //예외처리 출력
      }
      return -2; // 데이터 베이스 오류
   }
}





