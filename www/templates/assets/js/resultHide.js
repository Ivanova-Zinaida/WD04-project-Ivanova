$(document).ready(function(){
	
	setTimeout(function(){
		$('[data-notify-hide]').slideUp(400)
	}, 1500);
  
	$('[data-notify-hide]').dblclick(function(){
		$(this).slideUp(400)
	})

	$('input[data-add-comment]').on('click', function(e){
		console.log(3333);
		e.preventDefault();
		comment = $('.comment-add-block__right').children('.textarea');
		if ( comment.val() == '' ) {
			$('.notify--error').removeClass('hide');
			comment.focus(function(event) {
				$('.notify--error').addClass('hide');
			});
		} else{
			$('#commentForm').submit();
		}
	});
	
});

