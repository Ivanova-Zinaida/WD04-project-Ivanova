		<?php function showContactItem($name, $title){
				global $contacts;
				if (@$contacts[$name]!=''){?>
					<div class="row align-items-start mb-15">
							<div class="col-md-5">
								<h6 class="contacts__item-name"><?=$title?></h6>
							</div>
							<div class="col-md-7">
								<div class="contacts__item-email">
								<?php if ($name=='email'){?>
									<a href="mailto:<?=$contacts[$name]?>" target="_blank">
								    <?=$contacts[$name]?></a>	
								<?php } else if ($name=='phone'){?>
									<a href="tel:<?=$contacts[$name]?>" target="_blank">
								    <?=$contacts[$name]?></a>
									
								<?php } else if($name=='skype'){?>
									<a href="skype:<?=$contacts[$name]?>?chat" target="_blank">
								    <?=$contacts[$name]?></a>
								<?php } else if($name=='github'){?>
									<a href="<?=$contacts[$name]?>" target="_blank">
								    <?=$contacts[$name]?></a>
								<?php } else { ?>
									<div>
										 <?=$contacts[$name]?>
									</div>
								<?php }?>
								</div>
							</div>
						</div>
				
				<?php  } } ?>
		
		<div class="content">
			<div class="container user-content section-page">
			
			<?php if(isAdmin()){?>
			
				<div class="row justify-content-end"><a class="button button--edit mr-20" href="<?=HOST?>contacts-edit">Редактировать</a><a class="button" href="<?=HOST?>messages">Сообщения</a></div>
				
			<?php }?>
				<div class="row">
					<div class="col-md-5">
						<div class="contacts__title title-1">Контакты</div>
						<?php showContactItem('name', 'Имя');?>
						
						<?php showContactItem('secondname', 'Фамилия');?>
						
						<?php showContactItem('email', 'Email');?>
						
						<?php showContactItem('skype', 'Skype');?>
						
						<?php showContactItem('github', 'Github');?>


		<?php if (@$contacts['vk']!='' || @$contacts['fb']!='' || @$contacts['twitter']!='') {?>
						<div class="row align-items-start mb-15">
							<div class="col-md-5">
								<h6 class="contacts__item-name">Социальные сети</h6>
							</div>
							<div class="col-md-7">
								<div class="contacts__item-social">
								<?PHP if (@$contacts['vk']!=''){?>
									<a href="<?=$contacts['vk']?>">Профиль Вконтакте </a>
								<?PHP }?>
								
								<?PHP if (@$contacts['fb']!=''){?>
									<a href="<?=$contacts['fb']?>">Профиль Facebook </a>
								<?PHP }?>
								
								<?PHP if (@$contacts['twitter']!=''){?>
									<a href="<?=$contacts[twitter]?>">Профиль Twitter </a>
								<?PHP }?>
								
								
								</div>
							</div>
						</div>
					<?php } ?>	
					
						<?php showContactItem('phone', 'Телефон');?>
						<?php showContactItem('address', 'Адрес');?>
					
					</div>
					<div class="offset-md-1 col-md-4">
						<div class="contacts__title title-1">Связаться со мной</div>
						<form class="form-contacts" action="<?=HOST?>contacts" method="POST" enctype="multipart/form-data">
						
							
					<?PHP include ROOT . "templates/_parts/_errors.tpl";?>
					<?PHP include ROOT . "templates/_parts/_success.tpl";?>
						
							<div class="form-group"><label class="label">
								<input class="input" name="name" type="text" placeholder="Введите имя"/>
							</label></div>
							<div class="form-group">
							<label class="label">
								<input class="input" name="email" type="text" placeholder="Email"/>
							</label></div>
							<div class="form-group">
							<label class="label">
								<textarea class="textarea" name="message" type="type" placeholder="Cообщение"></textarea>
							</label></div>
							<div class="form-contacts__file-upload">
								<div class="file-upload__title title-6">Прикрепить файл</div>
								<div class="file-upload__comment">div jpg, png, pdf, doc, весом до 2Мб.</div>
								<input class="inputfile" type="file" name="file" id="file" />
								<label class="label-input-file" for="file">Выбрать файл</label><span>Файл не выбран</span>
								<input name="newMessage" class="button button--save" type="submit" value="Отправить"/>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="map" id="map"></div>
		</div>
		<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIr67yxxPmnF-xb4JVokCVGgLbPtuqxiA"></script>