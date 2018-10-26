		
	<div class="content">
		<div class="container user-content section-page">
			<div class="row">
				
					<form class="col-md-10 offset-md-1" method="POST" action="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>" >
						<h1>Удалить категорию</h1>
						
						<div class="form-group">
								<p>Вы действительно хотите удалить категорию <strong><?=$cat['cat_title']?></strong> c ID=<?=$cat['id']?> ? </p>
						</div>
						
						<input type="submit" value="Удалить" class="button button--remove mr-20" name='catDelete'>
						<a href="<?=HOST?>blog/categories" class="button ">Отмена</a>
						
						
					</form>
				</div>
			</div>
		</div>