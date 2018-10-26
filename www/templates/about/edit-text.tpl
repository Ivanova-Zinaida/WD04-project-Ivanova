<?PHP
	function dataFromPost($filedName){
		global $about;
		echo @$_POST[$filedName] !=''? @$_POST[$filedName]: $about[$filedName];
	}			
?>
	
		<div class="content">
			<div class="container user-content section-page">
				<div class="row">
					<form class="col-md-10 offset-md-1" method="POST" action="edit-text" enctype="multipart/form-data">
						<h1>Редактировать - Обо Мне</h1>
						
							<?php require ROOT. "templates/_parts/_errors.tpl"?>
					
						<div class="form-group"><label class="label">Имя, фамилия<input class="input" name="name" type="text" placeholder="Введите имя" value="<?php dataFromPost('name')?>"/></label></div>
						<p class="label mb-0">Фотографии</p>
						<p class="mt-0">Изображение jpg или png, рекомендуемый размер 205px на 205px, вес до 2Мб.</p><input class="inputfile" type="file" name="photo" id="file" /><label class="label-input-file" for="file">Выбрать файл</label><span>Файл не выбран</span>
						
						<div class="mt-20">
							<div class="avatar avatar-small"><img src="<?=HOST?>usercontent/about/<?=$about->photo?>" alt="avatar" /></div>
						</div>
						
						<div class="form-group"><label class="label"> Информация на главной
							<textarea id="ckEditor" class="textarea" name="description" type="type" placeholder=""><?php dataFromPost('description')?>
							
							</textarea>
							<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl"?>
						</label></div><input name='textUpdate' type="submit" class="button button--save mr-20" value="Сохранить"><a class="button" href="<?=HOST?>about">Отмена</a>
					</form>
				</div>
			</div>
		</div>