<div class="content">
			<div class="container user-content section-page team-portfolio">
						
<?PHP
 
   	if( isset ($_GET['result'])){
	include ROOT ."templates/portfolio/_result.tpl";
  
}?>
	
		<div class="row justify-content-between align-items-center pl-15 pr-15 mb-35">
					<div class="title-1"> Работы <span>которые сделал я и моя команда</span></div>
					
					<?PHP  if (isAdmin()) { ?>
							
						<a class="button button--edit" href="<?=HOST?>portfolio/portfolio-new">Добавить работу</a>		 
										
					<?PHP } ?>
					
					</div>
				<div class="row mb-50">
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

			</div>
		</div>