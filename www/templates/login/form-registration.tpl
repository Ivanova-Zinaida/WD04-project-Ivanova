
				
	<form class="login-form"  method='POST' id="registration-form" action="<?=HOST?>registration">
		<h1 class="text-center login-form__header">Регистрация</h1>
		
		<?php require ROOT . "templates/_parts/_errors.tpl";?>

		<input class="input-form-registration" name="email" type="email" placeholder="Email" />
		<input class="input-form-registration" name="password" type="password" placeholder="Пароль" />
		<div class="text-center pt-30">
			<input id="registration-form__submit" type="submit" class="button button--enter" value="Регистрация" name='register'>
		</div>
	</form>