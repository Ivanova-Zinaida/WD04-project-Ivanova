		<div class="login-page-conteiner">
		 		<div class="login-form__background--registration">
					<div class="login-form p-10 pt-30 pb-30">
						<h1 class="text-center login-heading mt-0 pt-0">Забыл пароль</h1>
						<form method="POST" action="<?=HOST?>lost-password">
						
						<?php require ROOT . "templates/_parts/_errors.tpl";?>
						<?php require ROOT . "templates/_parts/_success.tpl";?>
						

							
							<input class="input-form-registration" name="email" type="email" placeholder="Email" />
							<div class="pt-20 checkbox-color mr-0">
							<a class="header-registration__link" href="<?=HOST?>login">Перейти на страницу входа</a></div>
							<div class="text-center pt-30">
								<input id="registration-form__submit" type="submit" class="button button--enter" value="Восстановить пароль" name='lost-password'>
							</div>
						</form>
					</div>
				</div>
			</div>