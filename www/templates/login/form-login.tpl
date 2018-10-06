		<div class="login-page-conteiner">
				<div class="login-form__background--registration">
					<div class="login-form p-10 pt-30 pb-30">
						<h1 class="text-center login-heading mt-0 pt-0">Вход на сайт</h1>
						<form method="POST" action="<?=HOST?>login" id="form-login">
						
						<?php require ROOT . "templates/_parts/_errors.tpl";?>
							
							<input class="input-form-registration" name="email" type="email" placeholder="Email" /><input class="input-form-registration" name="password" type="password" placeholder="Пароль" />
							<div class="pt-20 checkbox-color mr-0">
								<div class="form-checkbox"><label class="label-checkbox"><input class="checkbox" type="checkbox" name="mark"/><span class="checkmark"></span>Запомнить меня</label></div><a class="header-registration__link" href="<?=HOST?>lost-password">Забыл пароль</a></div>
							<div class="text-center pt-30">
								<input id="registration-form__submit" type="submit" class="button button--enter" value="Войти" name='login'>
							</div>
						</form>
					</div>
				</div>
			</div>