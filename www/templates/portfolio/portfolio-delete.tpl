		
	<div class="content">
		<div class="container user-content section-page">
			<div class="row">
					<form class="col-md-10 offset-md-1" method="POST" action="<?=HOST?>portfolio/portfolio-delete?id=<?=$work['id']?>" >
						<h1>Удалить пост с описанием проекта</h1>
						
						<div class="form-group">
								<p>Вы действительно хотите удалить информацию о посте- <strong><?=$work['title']?></strong> c ID=<?=$work['id']?> ? </p>
						</div>
						
						<input type="submit" value="Удалить" class="button button--remove mr-20" name='workDelete'>
						<a href="<?=HOST?>portfolio/index" class="button ">Отмена</a>
					</form>
				</div>
			</div>
		</div>