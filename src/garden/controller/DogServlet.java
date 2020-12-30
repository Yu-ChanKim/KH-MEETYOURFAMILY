package garden.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import garden.model.dao.DogDao;
import garden.model.vo.DogVo;

@WebServlet("/garden.do")
public class DogServlet extends HttpServlet {
   
   String url = "main.jsp?inc=./dog_garden/";
   DogDao dao;
   
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request, response);
      
   }

   @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
      request.setCharacterEncoding("utf-8");
      response.setContentType("text/html;charset=utf-8");
      String siba = request.getParameter("siba");
      
      RequestDispatcher rd = null;
      dao = new DogDao();
      DogVo vo = null;

      
      
      switch(siba) {
         
      case "view":
         String name = request.getParameter("dname");
         vo = dao.view(name);
         
         request.setAttribute("vo", vo);
         
         rd = request.getRequestDispatcher("main.jsp?inc=./dog_garden/dog_page/dog_page.jsp");
         rd.forward(request, response);
         break;
         
         
         
         
      /*
      case "select":
      case "insert":
      case "delete":
      case "update":
      */
      
      }
   
   
   
   
   }
   
}