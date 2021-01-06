package com.join;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DBCPConn;

public class MemberServlet extends HttpServlet {

   private static final long serialVersionUID = 1L;

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp)
         throws ServletException, IOException {
      doPost(req, resp);
   }
   
   
   protected void forward(HttpServletRequest req, HttpServletResponse resp,String url)
         throws ServletException, IOException {
      RequestDispatcher rd=req.getRequestDispatcher(url);
      rd.forward(req, resp);
   }
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp)
         throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      
      //회원가입 DB연결
      Connection conn=DBCPConn.getConnection(); 
      MemberDAO dao=new MemberDAO(conn);
      
      String cp=req.getContextPath(); //http://localhost:8080/프로젝트명
      String uri=req.getRequestURI();  // (/프로젝트명/created.do 뒷부분의 주소를 읽어옴) // URI : 프로젝트 이하 경로 (CP + SP)
      
      String url;
      
      
      //uri에 해당 단어가 있는지 확인
      if(uri.indexOf("created.do")!=-1){
         url="/member/created.jsp";
         forward(req,resp,url);
      }else if(uri.indexOf("created_ok.do")!=-1){
         MemberDTO dto=new MemberDTO();
         
         dto.setUserId(req.getParameter("userId"));
         dto.setUserPwd(req.getParameter("userPwd"));
         dto.setUserName(req.getParameter("userName"));
         dto.setUserBirth(req.getParameter("userBirth"));
         dto.setUserTel(req.getParameter("userTel"));
         dto.setUserAnswer(req.getParameter("userAnswer"));
         dto.setUserGender(req.getParameter("userGender"));
         dto.setZipcode(req.getParameter("zipcode"));
         dto.setAddress1(req.getParameter("address1"));
         dto.setAddress2(req.getParameter("address2"));
         
         dao.insertData(dto);
         
         url=cp+"main.jsp"; // http:localhost:8080/study 입력시 index.jsp 실행됨
         resp.sendRedirect(url);
         
      }else if(uri.indexOf("login.do")!=-1){
         //로그인시 포워드 페이지
         url="main.jsp?inc=./member/login.jsp";
         forward(req, resp, url);
      }else if(uri.indexOf("login_ok.do")!=-1){
         
         String userId=req.getParameter("userId");
         String userPwd=req.getParameter("userPwd");
         
         MemberDTO dto=dao.getReadData(userId);
         
         //dto가 null이면 아이디가 틀린것(id가없어서 오라클에서 return값이 null)
         //패스워드 비교해서 틀리면 패스워드가 틀린것(세션에 있는 pwd가 DB의 pwd와 일치하지 않는 경우)
         if(dto==null||!dto.getUserPwd().equals(userPwd)){
            req.setAttribute("message", "아이디 또는 패스워드를 정확히 입력하세요!");
            
            url="/member/login.jsp";
            forward(req, resp, url);
            
            return;//로그인이 실패하면 return(뒤에 코드 실행하지 않는다)
         }
         
         //로그인이 성공했을 경우
         //세션에 현재 아이디,이름을      담는다.
         CustomInfo info=new CustomInfo();
         
         //info는 로그인 성공 했을 때 개인의 정보들을 담는것.
         //dto는 sql문 MemberDTO의 변수값
         
         // 저장해놓은 파라미터값(String userId)을 사용해도 오류는 없음
         info.setUserId(dto.getUserId());
         info.setUserName(dto.getUserName());
         //추가된부분
         info.setUserPwd(dto.getUserPwd());
         info.setUserBirth(dto.getUserBirth());
         info.setUserTel(dto.getUserTel());
         info.setUserAnswer(dto.getUserAnswer());
         info.setUserGender(dto.getUserGender());
         info.setZipcode(dto.getZipcode());
         info.setAddress1(dto.getAddress1());
         info.setAddress2(dto.getAddress2());
         

         //session도 out.print처럼 jsp에는 그냥 사용가능한데
         //java에서는 요청을 한뒤 써야한다.
         HttpSession session=req.getSession(); // 세션 객체 생성
         session.setAttribute("customInfo", info); //세션에 값 담기
         
         url=cp+"/main.jsp"; // cp는 http:localhost:8080/KH-MEETYOURFAMILY 입력시 index.jsp 실행됨 하지만 우리 프로젝트는 /main.jsp넣기
         resp.sendRedirect(url);            
         
         
      }else if(uri.indexOf("logout.do")!=-1){
      
         HttpSession session=req.getSession();
         
         session.removeAttribute("customInfo");
         session.invalidate();//변수도 지움
         
         url=cp+"/main.jsp";
         resp.sendRedirect(url);
      }
      
      ////////////////////수정
      else if(uri.indexOf("searchid.do")!=-1){//아이디 찾기
         
         url="/member/searchid.jsp";
         forward(req, resp, url);
      }
      else if(uri.indexOf("searchid_ok.do")!=-1){//아이디 찾기_jsp
         
         String userName =req.getParameter("userName");
         String userAnswer =req.getParameter("userAnswer");
         
         MemberDTO dto = dao.getNameData(userName);
         
         if(dto==null||!dto.getUserAnswer().equals(userAnswer)){
            req.setAttribute("message", "회원정보가 존재하지 않습니다.");
            
            url="/member/login.jsp";
            forward(req, resp, url);
            return;
         }
         
         //1. 세션 값 담기
         CustomInfo info=new CustomInfo();
         
         info.setUserName(dto.getUserName());
         info.setUserAnswer(dto.getUserAnswer());
         
         HttpSession session=req.getSession();
         
         session.setAttribute("customInfo", info);
         
         req.setAttribute("message", "아이디는 ["+dto.getUserId()+"]입니다.");
         
         req.setAttribute("find", "아이디 찾기");
         url="/member/login.jsp";
         forward(req, resp, url);      
      }
      
      //////////////////////////////////
      else if(uri.indexOf("searchpw.do")!=-1){//비밀번호 찾기
         
         url="/member/searchpw.jsp";
         forward(req, resp, url);
      }else if(uri.indexOf("searchpw_ok.do")!=-1){//비밀번호 찾기_jsp
         
         String userId=req.getParameter("userId");
         String userAnswer=req.getParameter("userAnswer");
         
         MemberDTO dto=dao.getReadData(userId);
         
         if(dto==null||!dto.getUserAnswer().equals(userAnswer)){
            req.setAttribute("message", "회원정보가 존재하지 않습니다.");
            
            url="/member/login.jsp";
            forward(req, resp, url);
            
            return;
         }
         
         CustomInfo info=new CustomInfo();
         
         info.setUserId(dto.getUserId());
         info.setUserAnswer(dto.getUserAnswer());
         
         HttpSession session=req.getSession();
         
         session.setAttribute("customInfo", info);
         
         req.setAttribute("message", "비밀번호는 ["+dto.getUserPwd()+"]입니다.");
         
         req.setAttribute("find", "비밀번호 찾기");
         url="/member/login.jsp";
         forward(req, resp, url);
               
      }
      
      
      else if(uri.indexOf("updated.do")!=-1){
         
         HttpSession session=req.getSession();
         
         CustomInfo info=(CustomInfo)session.getAttribute("customInfo");
         
         MemberDTO dto=dao.getReadData(info.getUserId());
         
         req.setAttribute("dto", dto);//updated.jsp에서 정보 띄워주기위해 받아준다.
         
         //회원정보가 없을때
         if(dto==null){
            url=cp;
            resp.sendRedirect(url);
         }
         
         url="/member/updated.jsp";
         forward(req, resp, url);
         
      }else if(uri.indexOf("updated_ok.do")!=-1){
         
         MemberDTO dto=new MemberDTO();
         
         //다시 세션값을 받아와서
         HttpSession session=req.getSession();
         
         CustomInfo info=new CustomInfo();
         
         info=(CustomInfo)session.getAttribute("customInfo");
      
         //새로운 dto에 form으로 넘어온 userPwd등의 값들과
         //세션에 저장되있는 아이디값을 updateData sql을 통해 실행시켜준다.
         dto.setUserPwd(req.getParameter("userPwd"));
         dto.setUserBirth(req.getParameter("userBirth"));
         dto.setUserTel(req.getParameter("userTel"));
         dto.setUserId(info.getUserId());
         
         dao.updateData(dto);
         
         //다시 인덱스 화면으로
         url=cp+"/main.jsp";
         resp.sendRedirect(url);
         
      }
      
      
   }

   
}