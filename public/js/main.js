<script type="text/javascript">
(function ($) {
$.fn.vAlign = function() {
	return this.each(function(i){
	var h = $(this).height();
	var oh = $(this).outerHeight();
	var mt = (h + (oh - h)) / 2;
	$(this).css("margin-top", "-" + mt + "px");
	$(this).css("top", "50%");
	$(this).css("position", "absolute");
	});	
};
})(jQuery);

$(document).ready(function() {
	$("#content").vAlign();
});
</script>