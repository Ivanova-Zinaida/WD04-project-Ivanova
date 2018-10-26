<div class="content">
			<form class="container user-content section-page" action="portfolio-new" method="post" enctype="multipart/form-data" >
				<div class="row">
					<div class="col-md-10 offset-md-1">
						<h1>Добавить работу</h1>
						
						<?php require ROOT. "templates/_parts/_errors.tpl"?>
						
						<div class="form-group"><label class="label">Название<input class="input" name="title" type="text" placeholder="Введите название работы" value="<?=@$works['title']?>"/></label></div>

						
						
						<p class="label mb-0">Изображение</p>
						<p class="mt-0">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</p><div class="blog-edit__fileUp"><input class="inputfile" type="file" name="postImage" id="file" /><label class="label-input-file" for="file">Выбрать файл</label><span>Файл не выбран</span></div>
					
						<div class="form-group"><label class="label"> Содержание<textarea id="ckEditor" class="textarea" name="description" type="type" placeholder="Введите описание"></textarea></label></div>
						<div class="form-group"><label class="label"> Результат<textarea id="ckEditor1" class="textarea" name="result" type="type" placeholder="Введите описание"></textarea></label></div>
						<div class="form-group"><label class="label"> Технологии<textarea id="ckEditor2" class="textarea" name="technology" type="type" placeholder="Введите описание"></textarea></label></div>	
						<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl"?>					
						<div class="form-group">
							<label class="label"><p class="mb-0 mt-0">Категория</p>
								<select name="postCat" id="">
				
								<?PHP foreach ($cats as $cat){?>

					     			<option value="<?=$cat['id']?>"><?=$cat['cat_title']?></option>
					     			
								<?PHP }?>
								</select>
							</label>
						</div>
					</div>
				</div>
				<div class="project-links">
					<div class="row">
						<div class="col-md-3 offset-md-1">
							<div class="form-group"><label class="label">Ссылка на проект<input class="input" name="linkWork" type="text" placeholder="Введите ссылку"/></label></div>
						</div>
						<div class="col-md-3">
							<div class="form-group"><label class="label">Ссылка на GitHub<input class="input" name="linkGithub" type="text" placeholder="Введите ссылку"/></label></div>
						</div>
					</div>
				</div>
				<div class="project-buttons">
					<div class="row">
						<div class="col-md-12 offset-md-1">
						<input type="submit" name="newWork" value="Сохранить" class="button button--save">
						<a class="button" href="<?=HOST?>portfolio">Отмена</a></div>
					</div>
				</div>
			</form>
		</div>