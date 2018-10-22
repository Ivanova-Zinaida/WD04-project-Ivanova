
	<form method="POST" action="<?=HOST?>set-new-password" class="login-form">
    
	    <?PHP if ($newPasswordReady==false):?>
		<h1 class="text-center login-form__header">Введите новый пароль</h1>
		<?PHP endif?>
		
		<?php require ROOT . "templates/_parts/_errors.tpl";?>
		<?php require ROOT . "templates/_parts/_success.tpl";?>
		
		<?PHP if ($newPasswordReady==false):?>
		
		<input class="input-form-registration" name="resetpassword" type="password" placeholder="Пароль" />
		
		<?PHP endif?>
		
		<div class="login-form-links"><a href="<?=HOST?>login">Перейти на страницу входа</a></div>
		
		<?PHP if ($newPasswordReady==false):?>
		
		<div class="text-center pt-30">
		<input  name="resetemail" type="hidden" value="<?=$_GET['email']?>" />
		<input name="onetimecode" type="hidden" value="<?=$_GET['code']?>" />
		<input id="registration-form__submit" type="submit" class="button button--enter" value="Установите новый пароль" name='set-new-password'>

		</div>
		<?PHP endif?>
	</form>