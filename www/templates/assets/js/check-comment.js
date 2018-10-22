$(document).ready(function(){

	(function(){

		var checkComment = {

			isValid: true,

			init: function(){
				this._setUpListeners();
			},

			_setUpListeners: function(){
				$('#comment-form').on('submit', checkComment._validateCommentForm).on('submit', checkComment._sendEmail);
			},

			_validateCommentForm: function(event){
				event.preventDefault();
				var formComment = $(this),
					inputs = formComment.find('textarea'),
					valid = true;


				$.each(inputs, function(index, val){
					var input = $(val),
						value = input.val().trim(),
		                commentError= $('#commentError')

					if ( value.length === 0 ) {
						commentError.fadeIn(),
						valid = false;
					}
					
					input.on('focus', function(){
						commentError.fadeOut();
					});
					input.on('keydown', function(){
						commentError.fadeOut();
					});

				});

				checkComment.isValid = valid;
			},

			_sendEmail: function(){
				
				console.log('checkComment.isValid = ' + checkComment.isValid);
				if ( checkComment.isValid === true ) {
					window.location.href = 'success.html';
				}
			}

		};

		checkComment.init();

	}());

});