$(document).ready(function(){
 
	(function(){

		var formLoginValidation = {

			isValid: true,

			init: function(){
				this._setUpListeners();
			},

			_setUpListeners: function(){
				$('#form-login').on('submit', formLoginValidation._validateForm).on('submit', formLoginValidation._sendEmail );
			},

			_validateForm: (function(event){
				event.preventDefault();
				var form = $(this),
					inputs = form.find('input'),
					valid = true;
				
				$.each(inputs, function(index, val){
					var input = $(val),
						value=input.val().trim(),
						valuePassword = $('input[type=password]').val().trim(),
						valueEmail = $('input[type=email]').val().trim(),
						emptyEmail=$('#empty-email'),
						passwordEmpty=$('#empty-password'),
					    notTrueEmail=$('#not-true-email'),
					    notTrueMail=$('#not-True-form'),
						notTruePassword=$('#not-True-form'),
						Email=$('input[name=email]'),
					    Password=$('input[name=email]'),
						pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
					
					if(input.is('input:password')){
					   if (value.length === 0){	
						passwordEmpty.removeClass('error-hiden');
						valid = false;	
					}else {
						passwordEmpty.addClass('error-hiden');	
						}
					   }	
				
					if(!(input.is('input:password'))){
					   	if(valueEmail .length===0){
							emptyEmail.removeClass('error-hiden');
							valid = false;
						}else {
							emptyEmail.addClass('error-hiden');
						}
					   }
      	
					if ( !(input.is('input:password')) ) {
						if ( input.attr('type').toLowerCase() === 'email' ) {
							if ( valueEmail !== '' ) {
	      					    if (pattern.test(valueEmail)) {
	  							   notTrueEmail.addClass('error-hiden');
	      						} else {	
									notTrueEmail.removeClass('error-hiden');
	      							valid = false;
	      						}
							}
						}
					}
					
                    if(valueEmail !=="" && (pattern.test(valueEmail)) && valuePassword !==''){
	      				 if(valueEmail =="mail@mail.com" &&  valuePassword ==='123' ){
							 notTrueMail.addClass('error-hiden');	
						} else{
							  notTrueMail.removeClass('error-hiden');
	      				  	  valid = false;			
						}}
					
					input.on('focus', function(){
						
						if(input.is('input:password')){
								passwordEmpty.addClass('error-hiden');
								notTruePassword.addClass('error-hiden');
							}else{
								emptyEmail.addClass('error-hiden');
								notTrueEmail.addClass('error-hiden');
								notTrueMail.addClass('error-hiden');
							}
					     });
					
					input.on('keydown', function(){
						if(input.is('input:password')){
							    passwordEmpty.addClass('error-hiden');
								notTruePassword.addClass('error-hiden');
							}else{
								emptyEmail.addClass('error-hiden');
								notTrueEmail.addClass('error-hiden');
								notTrueMail.addClass('error-hiden');	
							}
				         });
			       	});

				formLoginValidation.isValid = valid;
			}),

			_sendEmail: function(){
				console.log('form true');
				if ( formLoginValidation.isValid === true ) {
					$('#form-login').submit();
				} else{
				}
			}
		};

		formLoginValidation.init();

	}());

});