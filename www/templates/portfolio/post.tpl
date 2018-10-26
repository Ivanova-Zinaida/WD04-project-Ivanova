		<?php 
	if(isAdmin()){
		include ROOT."templates/_parts/_admin-panel.tpl";
}?>
		<div class="content">
			<section class="my-portfolio">
				<div class="my-portfolio__gradient">
					<div class="my-portfolio__logo pt-55 mb-100 ml-50">
						<div class="logo">
							<div class="logo-icon logo-portfolio-icon"><i class="far fa-paper-plane"></i></div>
							<div class="logo_description"><a class="header-logo__title" href="#">Digital Lifestyle</a><a class="header-logo__sub" href="#">Сайт IT специалиста</a></div>
						</div>
					</div>
					<div class="container user-content">
						<div class="row">
							<div class="post-row-top-port col-md-11   offset-md-1 my-portfolio__row">
							
							<?PHP if(isAdmin()){
							$additionalHeaderClass='mr-100';
							
							}?>
							
								<h1 class='<?=@$additionalHeaderClass?>'><?=$work['title']?></h1>
							
							<?PHP  if (isAdmin()) { ?>
														
								<div class="button-right-top"><a class="button_position button button--edit mt-25" href="<?=HOST?>portfolio/portfolio-edit?id=<?=$work['id']?>">Редактировать</a>
								<a class="button button--remove mt-25" href="<?=HOST?>portfolio/portfolio-delete?id=<?=$work['id']?>">Удалить</a>
								</div>
								 
								<?PHP } ?>
		
							</div> 
						</div>		
		
						
						<div class="row">
							<div class="col-md-10 offset-md-1">
								<div class="post mb-0">
									<div class="post-infom mt-0">
										<div class="post-info__subtitle mb-55 my-portfolio__row">
											<div class="post-info__author"><?=$work['name']?> <?=$work['secondname']?></div>
											<div class="post-info__topic"> <a class="post-info__link" href="#"><?=$work['cat_title']?></a></div>
											<div class="post-info__date"><? echo rus_date(" d F Y H:i", strtotime($work['date_time']));?></div>
										</div>
									</div>
							<?PHP if ($work['work_image'] !=''){?>
								<div class="post-img"><img src="<?=HOST?>usercontent/portfolio/<?=$work['work_image']?>" alt="ausmaids-home" /></div>
							<?PHP }?>
									
								
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="my-portfolio__description">
				<div class="container user-content">
					<div class="row">
						<div class="mb-50 col-md-10 my-portfolio__row offset-md-1">
							<div class="col-md-6 ml-md-0 pl-md-0">
								<h3>Кратко о проекте</h3>
								<p><?=$work['description']?></p>
								<h3>Результат</h3>
								<p><?=$work['result']?></p>
							</div>
							
							<div class="col-md-4">
								<h3>Технологии</h3>
								<nav class="my-portfolio__nav">
									<?=$work['technology']?>
								</nav>
							<?PHP if ($work['link_work'] !=''){?>
								<h3>Ссылка на проект</h3><a href="<?=$work['link_work']?>"><?=$work['link_work']?></a>
							<?PHP }?>
							<?PHP if ($work['link_github'] !=''){?>
								<h3>Код на github</h3><a href="<?=$work['link_github']?>"><?=$work['link_github']?></a>
							<?PHP }?>
							</div>	
								
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 my-portfolio__buttons-nav offset-md-1"><a class="button button--icon-left" href="<?=HOST?>portfolio"><i class="fas fa-arrow-left"></i>Все работы</a><a class="button button--icon-right" href="#">Следующая работа<i class="fas fa-arrow-right"></i></a></div>
					</div>
				</div>
			</section>
		</div>