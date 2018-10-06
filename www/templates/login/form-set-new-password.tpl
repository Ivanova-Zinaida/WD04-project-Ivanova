<div class="login-page-conteiner">
		 		<div class="login-form__background--registration">
					<div class="login-form p-10 pt-30 pb-30">
						<?PHP if ($newPasswordReady==false):?>
						<h1 class="text-center login-heading mt-0 pt-0">Введите новый пароль</h1>
						<?PHP endif?>
						
						<form method="POST" action="<?=HOST?>set-new-password">
						
						<?php require ROOT . "templates/_parts/_errors.tpl";?>
						<?php require ROOT . "templates/_parts/_success.tpl";?>
						

							<?PHP if ($newPasswordReady==false):?>
							<input class="input-form-registration" name="resetpassword" type="password" placeholder="Пароль" />
							<?PHP endif?>
							<div class="pt-20 checkbox-color mr-0">
							<a class="header-registration__link" href="<?=HOST?>login">Перейти на страницу входа</a></div>
							<div class="text-center pt-30">
							
							<?PHP if ($newPasswordReady==false):?>
							
								<input  name="resetemail" type="hidden" value="<?=$_GET['email']?>" />
									<input name="onetimecode" type="hidden" value="<?=$_GET['code']?>" />
								<input id="registration-form__submit" type="submit" class="button button--enter" value="Установите новый пароль" name='set-new-password'> 
							<?PHP endif?>
							</div>
						</form>
					</div>
				</div>
			</div>