package garden.admin.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import garden.model.vo.DogVo;


public class FileUpload {
   
   //saveDirectory
   public static final String saveDir = "C:\\Users\\PC\\Desktop\\Jacob_Home3\\KH-MEETYOURFAMILY\\WebContent\\img\\dog_image\\"; //upload 파일 경로 복붙하고 맨뒤에 역슬러쉬 \\ 두개를 붙인다.
   int maxSize = 1024*1024*100; //100Mb
   String encoding = "utf-8";
   MultipartRequest mul;
   String sysFile = "";
   String oriFile = "";
      
   public FileUpload(HttpServletRequest request) {
            
      try {
         //업로드를 위한 기본 5가지 변수가 필요하다.
         //선언된 mul로 getParameter를 쓸 수 있게 된다.
         mul = new MultipartRequest(request,saveDir,maxSize,encoding,new DefaultFileRenamePolicy());
         
         //업로드된 파일명 가져오는 방법
         Enumeration<String> en = mul.getFileNames();
         while(en.hasMoreElements()) {
            String tag = (String)en.nextElement();
            sysFile = mul.getFilesystemName(tag); // 수정된 파일명
            oriFile = mul.getOriginalFileName(tag); // 원본 파일명         
         }   
         
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
   
   public DogVo getDog() {
      
      DogVo vo = new DogVo();
      vo.setDog_serial(Integer.parseInt(mul.getParameter("serial")));
        vo.setDog_group(mul.getParameter("group"));
        vo.setDog_name(mul.getParameter("name"));
        vo.setDog_breed(mul.getParameter("breed"));
        vo.setDog_gender(mul.getParameter("gender"));
        vo.setDog_age(mul.getParameter("age"));
        vo.setDog_weight(mul.getParameter("weight"));
        vo.setDog_mbti(mul.getParameter("mbti"));
        vo.setDog_mbti_char(mul.getParameter("mbti_char"));
        vo.setDog_photo1(sysFile);
        vo.setDog_photo2(sysFile);
        vo.setDog_photo3(sysFile);
        vo.setDog_photo4(sysFile);
        vo.setDog_story(mul.getParameter("story"));
      vo.setDelFile(mul.getParameter("delFile")); 

      
        /*
        vo.setDog_photo2(mul.getParameter("dog_photo2"));
        vo.setDog_photo3(mul.getParameter("dog_photo3"));
        vo.setDog_photo4(mul.getParameter("dog_photo4"));
        */
      return vo;
   }
   
}