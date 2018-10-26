		<?PHP include ROOT ."templates/about/_adout-text.tpl";?>


				<div class="hr-line"> </div>
				<div class="container section-page">
					<div class="title-1">Новые <a href="#">работы</a></div>
					<div class="row mb-70">
					<?php foreach($work as $work){?>
						<div class="col-md-4 mb-40" >
							<div class="card card--portfolio">
								<div class="card__img"><img src="<?=HOST?>usercontent/portfolio/<?=$work['work_image_small']?>" alt="<?=$work->title?>" /></div>
								<div class="card__desc pl-20 pr-20">
								<div class="card__title"><?=$work->title?></div><a class="button" href="<?=HOST?>portfolio/post?id=<?=$work->id?>">Смотреть кейс</a></div>
							</div>
						</div>
					<?php }?>
					</div>
					<div class="title-1">Новые записи в <a href="<?=HOST?>blog">блоге</a></div>
					<div class="row">
				<?PHP foreach ($post as $post){?>

					     <?PHP include ROOT."templates/_parts/_blog-card.tpl"?>
					     
				<?PHP }?>
					</div>
				</div>
			</div>
		</div>
		
		