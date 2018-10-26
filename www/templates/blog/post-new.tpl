		
		<div class="content">
			<div class="container user-content section-page">
				<div class="row">
				
					<form class="col-md-10 offset-md-1" method="POST" action="<?=HOST?>blog/post-new" enctype="multipart/form-data">
						<h1>Добавить пост</h1>
						 
						<?php require ROOT. "templates/_parts/_errors.tpl"?>
						
						<div class="form-group"><label class="label">Название<input class="input" name="postTitle" type="text" placeholder="Введите название"/></label></div>
						
						
						<div class="form-group">
							<label class="label"><p class="mb-0 mt-0">Категория</p>
								<select name="postCat" id="">
								
								<?PHP foreach ($cats as $cat){?>

					     			<option value="<?=$cat['id']?>"><?=$cat['cat_title']?></option>
					     			
								<?PHP }?>

								</select>
							</label>
						</div>
						
						<div class="blog-edit__container"><b>Изображение</b>
							<p class="mb-10"> Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</p>
						</div>
						
						<div class="blog-edit__fileUp"><input class="inputfile" type="file" name="postImage" id="file" /><label class="label-input-file" for="file">Выбрать файл</label><span>Файл не выбран</span></div>
						<div class="form-group"><label class="label">Содержание<textarea id="ckEditor" class="textarea" name="postText" type="type" placeholder=""></textarea>
			<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl"?>
						</label></div>
						
						<input type="submit" value="Сохранить" class="button button--save mr-20" name='postNew'>
						<a href="<?=HOST?>blog" class="button ">Отмена</a>
						
						
					</form>
				</div>
			</div>
		</div>