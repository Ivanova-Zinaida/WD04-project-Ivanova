		
	<div class="content">
		<div class="container user-content section-page">
			<div class="row">
				
					<form class="col-md-10 offset-md-1" method="POST" action="<?=HOST?>blog/post-delete?id=<?=$post['id']?>" >
						<h1>Удалить пост</h1>
						
						<div class="form-group">
								<p>Вы действительно хотите удалить пост  <strong><?=$post['title']?></strong> c ID=<?=$post['id']?> ? </p>
						</div>
						
						<input type="submit" value="Удалить" class="button button--remove mr-20" name='postDelete'>
						<a href="<?=HOST?>blog/post" class="button ">Отмена</a>
						
						
					</form>
				</div>
			</div>
		</div>