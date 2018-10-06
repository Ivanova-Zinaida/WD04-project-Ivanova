				<div class="login-form__background">
					<div class="login-form pt-30 pb-30">
						<h1 class="text-center login-heading mt-0 pt-0">Регистрация</h1>
						
						<?php require ROOT . "templates/_parts/_errors.tpl";?>
						
						<form method='POST' id="registration-form" action="<?=HOST?>registration">
					 
							<input class="input-form-registration" name="email" type="email" placeholder="Email" data-empty="Введите email" data-error="Неверный формат email" data-exist="Данный email уже занят" />
							<input class="input-form-registration" name="password" type="password" placeholder="Пароль" data-empty="Введите пароль"/>
							<div class="text-center pt-30">
								<input id="registration-form__submit" type="submit" class="button button--enter" value="Регистрация" name='register'>
							</div>
					
						</form>
					
					</div>
				</div>