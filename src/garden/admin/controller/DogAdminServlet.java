package garden.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import garden.admin.model.dao.DogAdminDao;
import garden.model.vo.DogVo;


@WebServlet("/dog_garden")
public class DogAdminServlet extends HttpServlet {   
   String url = "main.jsp?inc=./dog_garden_admin/";
   DogAdminDao dao;
   
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request, response);   
   }   

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
      request.setCharacterEncoding("utf-8");
       response.setContentType("text/html;charset=utf-8");
       String admin = request.getParameter("admin");
      
       
      
       RequestDispatcher rd = null;
       dao = new DogAdminDao();
       DogVo vo = null;
       String msg = "";
      

       switch(admin) {
       
       case "select":
          
          List<DogVo> list = dao.select();
          
          request.setAttribute("list", list);
          
          rd = request.getRequestDispatcher(url + "select.jsp");
          rd.forward(request, response);
          break;
          
       case "view":
          
          int serial = Integer.parseInt(request.getParameter("serial"));
          
          vo = dao.view(serial);
          
          request.setAttribute("vo", vo);
          rd = request.getRequestDispatcher(url + "view.jsp");
          rd.forward(request, response);
          break;
         
       case "modify":
          
          int serial2 = Integer.parseInt(request.getParameter("serial"));
          
          vo = dao.view(serial2);
          
          request.setAttribute("vo", vo);
          rd = request.getRequestDispatcher(url + "update.jsp");
          rd.forward(request, response);
          break;
       
       case "update":
          
          FileUpload fu = new FileUpload(request);          
          vo = fu.getDog();
          
           msg = dao.update(vo);
          
          request.setAttribute("msg", msg);
          
          rd = request.getRequestDispatcher(url+"result.jsp");
         rd.forward(request, response);         
         break;
       
       case "insert" :
           FileUpload fu1 = new FileUpload(request);
           vo = fu1.getDog();
             
           msg = dao.insert(vo);
             
           request.setAttribute("msg", msg);
           rd = request.getRequestDispatcher(url + "result.jsp");
           rd.forward(request, response);
           break;
          
       case "delete" :
    	   vo = new DogVo();
    	   vo.setDog_serial(Integer.parseInt(request.getParameter("serial")));
    	   vo.setDelFile1(request.getParameter("delFile1"));
    	   vo.setDelFile2(request.getParameter("delFile2"));
    	   vo.setDelFile3(request.getParameter("delFile3"));
    	   vo.setDelFile4(request.getParameter("delFile4"));
    	   
    	   msg = dao.delete(vo);
    	   
    	   request.setAttribute("msg", msg);
    	   
    	   rd = request.getRequestDispatcher(url + "result.jsp");
    	   rd.forward(request, response);
    	   break;
          
       
       }
      
      
   }

}