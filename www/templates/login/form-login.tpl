
						
	<form method="POST" action="<?=HOST?>login" id="form-login" class="login-form">
		<h1 class="text-center login-form__header">Вход на сайт</h1>
		<?php require ROOT . "templates/_parts/_errors.tpl";?>
		<input class="input-form-registration" name="email" type="email" placeholder="Email" />
		<input class="input-form-registration" name="password" type="password" placeholder="Пароль" />
		<div class="login-form-links"><a href="<?=HOST?>lost-password">Забыл пароль</a></div>
		<div class="text-center pt-30">
			<input id="registration-form__submit" type="submit" class="button button--enter" value="Войти" name='login'>
		</div>
	</form>