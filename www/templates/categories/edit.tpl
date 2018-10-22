		
		<div class="content">
			<div class="container user-content section-page">
				<div class="row">
				
					<form class="col-md-10 offset-md-1" method="POST" action="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>" >
						<h1>Создать новую категорию</h1>
						
						<?php require ROOT. "templates/_parts/_errors.tpl"?>
						
						<div class="form-group"><label class="label">Название категории<input class="input" name="catTitle" type="text" value="<?=$cat['cat_title']?>"/></label></div>
						
						<input type="submit" value="Сохранить" class="button button--save mr-20" name='catEdit'>
						<a href="<?=HOST?>blog/categories" class="button ">Отмена</a>
						
						
					</form>
				</div>
			</div>
		</div>