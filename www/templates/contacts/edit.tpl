<?PHP
	function dataFromPost($filedName){
		global $contacts;
		echo @$_POST[$filedName] !=''? @$_POST[$filedName]: $contacts[$filedName];
	
	}		
		
		
?>
			<div class="content">
			<div class="container contacts-edit section-page">
				<form action="<?=HOST?>contacts-edit" method="POST" class="contacts-edit-block user-content">
					<div class="title-1">Редактировать данные</div>
					
					
					<?PHP include ROOT . "templates/_parts/_errors.tpl";?>
					
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
							<label class="label">Имя
							<input class="input" name="name" type="text" placeholder="Введите имя"  
							 value="<?php dataFromPost('name')?>"
							/></label>
							</div>
						
							
							
							<div class="form-group"><label class="label">Фамилия<input class="input" name="secondname" type="text" placeholder="Введите фамилию" 
							 value="<?php dataFromPost('secondname')?>"/>
						     </label></div>
						</div>
						<div class="col-md-3">
							<div class="form-group"><label class="label">Email<input class="input" name="email" type="text" placeholder="Введите email" 
							 value="<?php dataFromPost('email')?>"
						     /></label></div>
							<div class="form-group"><label class="label">Skype<input class="input" name="skype" type="text" placeholder="Введите skype" 
							 value="<?php dataFromPost('skype')?>"
							/>
							 </label></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<div class="form-group"><label class="label">Вконтакте<input class="input" name="vk" type="text" placeholder="Введите ссылку на профиль" 
							 value="<?php dataFromPost('vk')?>"
							/></label></div>
						</div>
						<div class="col-md-3">
							<div class="form-group"><label class="label">Facebook<input class="input" name="fb" type="text" placeholder="Введите ссылку на профиль" 
							 value="<?php dataFromPost('fb')?>"
							/>
							 </label></div>
						</div>
						<div class="col-md-3">
							<div class="form-group"><label class="label">GitHub<input class="input" name="github" type="text" placeholder="Введите ссылку на профиль" 
							 value="<?php dataFromPost('github')?>"
							/>
							
							</label></div>
						</div>
						<div class="col-md-3">
							<div class="form-group"><label class="label">Twitter<input class="input" name="twitter" type="text" placeholder="Введите ссылку на профиль" 
							 value="<?php dataFromPost('twitter')?>"
							/></label></div>
						</div>
						<div class="col-md-3">
							<div class="form-group"><label class="label">Телефон<input class="input" name="phone" type="text" placeholder="Введите телефон" 
							 value="<?php dataFromPost('phone')?>"
							/></label></div>
						</div>
						<div class="col-md-3">
							<div class="form-group"><label class="label">Адрес<input class="input" name="address" type="text" placeholder="Введите адрес"
							value="<?php dataFromPost('address')?>"
							/></label></div>
						</div>
					</div>
					<div class="contacts-edit-btn">
					<input class="button button--save mr-20" type="submit" value="Сохранить" name='contactsUpdate'>
					<a class="button" href="<?=HOST?>contacts">Отмена</a>
					</div>
				</form>
			</div>
		</div>