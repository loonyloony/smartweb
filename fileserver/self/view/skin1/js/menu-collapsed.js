function initMenu() {
  $('.menu ul').hide();
  $('.menu li div.collape').click(
    function() {
        $(this).next().slideToggle('normal');
		$(this).next().show();
      }
    );
  }
$(document).ready(function() {initMenu();});