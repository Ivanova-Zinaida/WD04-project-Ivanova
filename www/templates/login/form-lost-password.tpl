
								
	<form method="POST" action="<?=HOST?>lost-password" class="login-form">
		<h1 class="text-center login-form__header">Забыл пароль</h1>
		
		<?php require ROOT . "templates/_parts/_errors.tpl";?>
		<?php require ROOT . "templates/_parts/_success.tpl";?>
		<input class="input-form-registration" name="email" type="email" placeholder="Email" />
		<div class="login-form-links"><a href="<?=HOST?>login">Перейти на страницу входа</a></div>
		<div class="text-center pt-30">
		<input id="registration-form__submit" type="submit" class="button button--enter" value="Восстановить пароль" name='lost-password'>

		</div>
	</form>