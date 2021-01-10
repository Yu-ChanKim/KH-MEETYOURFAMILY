/**
 * 체크박스 이벤트 javascript
 */

$(function() {
	$("#accordion").accordion();
	$('#accordion input[type="checkbox"]').click(function(e) {
		e.stopPropagation();
	});
});
