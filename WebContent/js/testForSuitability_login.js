let testNo = 0;


$(document).ready(function(){
   $(".test_startBtn").click(function(){
      $(".test_answer").show();
      $(".test_startBtn").hide();
      $(".test_mainLogo").hide();
      if($(".test_question1").css("display") == "none"){
         $(".test_question1").show();
      }
   });
   $(".contents_test").click(function(e){
        e.stopPropagation();
    });
    $(".test_yesBtn").click(function(){
        $.test_ing("yes");
    });
    $(".test_noBtn").click(function(){
        $.test_ing("no");
    });      
});

$.test_ing = function(answer_type){
      if(testNo < 6) {
         testNo += 1;
         if(testNo == 1){
            if(answer_type == "yes"){
               $.test_result("fail");
            }else if(answer_type == "no"){
               $(".test_question1").hide();
               $(".test_question2").show();
            }
         } else if(testNo == 2){
            if(answer_type == "yes"){
               $(".test_question2").hide();
               $(".test_question3").show();               
            }else if(answer_type == "no"){
               $.test_result("fail");
            }
         } else if(testNo == 3){
            if(answer_type == "yes"){
               $(".test_question3").hide();
               $(".test_question4").show();               
            }else if(answer_type == "no"){
               $.test_result("fail");
            }
         } else if(testNo == 4){
            if(answer_type == "yes"){
               $.test_result("fail");
            }else if(answer_type == "no"){
               $(".test_question4").hide();
               $(".test_question5").show();
            }
         } else if(testNo == 5){
            if(answer_type == "yes"){
               $.test_result("fail");
            }else if(answer_type == "no"){
               $.test_result("pass");               
            }
         }
      }   
};

$.test_result = function(result_type){
   if(result_type == "pass"){
      $(".resultBg_pop").show();
   } else if (result_type == "fail"){
      $(".test_resultBox").attr("src", "img/testForSuitability/testResult_fail.png");
      $(".test_resultBtn").attr("src", "img/testForSuitability/testBtn_fail.png");
      $(".test_resultBtn_link").attr("href", "main.jsp?inc=./dog_test/testForSuitability_login.jsp");
      $(".resultBg_pop").show();
   }
}