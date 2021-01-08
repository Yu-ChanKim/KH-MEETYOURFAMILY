let count = 0;
let mbti = {E:0, I:0, S:0, N:0, T:0, F:0, J:0, P:0};
let mbtiResult;


$(document).ready(function(){
    $(".start").click(function(){
        $(".pop_bg").show();
        $(".mbti_answer").show();
        $(".mbti_go").hide();
        $(".mbti_question").attr("src", "img/img_mbti/mbti_test_Q_1.png");
        mbti = {E:0, I:0, S:0, N:0, T:0, F:0, J:0, P:0};
        count = 1;
    });
    $(".pop_contents").click(function(e){
        e.stopPropagation();
    });
    $(".pop_bg").click(function(){
        $(".pop_bg").hide();
    });
    $(".mbti_answer_A").click(function(){
        $.mbti_calc("A");
    });
    $(".mbti_answer_B").click(function(){
        $.mbti_calc("B");
    });
});

$.mbti_calc = function(answer_type) {
    if(count < 12) {
        count += 1;
        switch(count) {
            case 1 : (answer_type == "A") ? mbti.E += 1 : mbti.I += 1; break;
            case 2 : (answer_type == "A") ? mbti.N += 1 : mbti.S += 1; break;
            case 3 : (answer_type == "A") ? mbti.F += 1 : mbti.T += 1; break;
            case 4 : (answer_type == "A") ? mbti.J += 1 : mbti.P += 1; break;
            case 5 : (answer_type == "A") ? mbti.N += 1 : mbti.S += 1; break;
            case 6 : (answer_type == "A") ? mbti.F += 1 : mbti.T += 1; break;
            case 7 : (answer_type == "A") ? mbti.E += 1 : mbti.I += 1; break;
            case 8 : (answer_type == "A") ? mbti.P += 1 : mbti.J += 1; break;
            case 9 : (answer_type == "A") ? mbti.T += 1 : mbti.F += 1; break;
            case 10: (answer_type == "A") ? mbti.S += 1 : mbti.N += 1; break;
            case 11: (answer_type == "A") ? mbti.P += 1 : mbti.J += 1; break;
            case 12: (answer_type == "A") ? mbti.I += 1 : mbti.E += 1; break;
        };

        $(".mbti_question").attr("src", "img/img_mbti/mbti_test_Q_" + count + ".png");

    } else {
        $.mbti_result();
    }
};

$.mbti_result = function () {
    mbtiResult = [];
    (mbti.E > mbti.I) ? mbtiResult.push("E") : mbtiResult.push("I");
    (mbti.S > mbti.N) ? mbtiResult.push("S") : mbtiResult.push("N");
    (mbti.T > mbti.F) ? mbtiResult.push("T") : mbtiResult.push("F");
    (mbti.J > mbti.P) ? mbtiResult.push("J") : mbtiResult.push("P");
    $(".mbti_answer").hide();
    $(".mbti_go").show();
    $(".mbti_question").attr("src", "img/img_mbti/mbti_test_" + mbtiResult.join("") + ".png");

}