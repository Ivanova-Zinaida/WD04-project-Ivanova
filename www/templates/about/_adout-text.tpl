		<div class="content">
			<div class="container user-content section-page about-me__description-wrapper mb-60">
			 
				<div class="row">
				<?php if ($about->photo!=''){?>
					<div class="col-md-3">
						<div class="avatar"><img src="<?=HOST?>usercontent/about/<?=$about->photo?>" alt="avatar" /></div>
					</div>
				<?php }?>

					<div class="col-md-9">
						<div class="about-me__title-container justify-content-between">
							<div class="title-1 about-me__title-container-item"><?=$about->name?></div>
							<?php if (isAdmin()){?>
							<div class="button-edit__about-me-item"><a class="button button--edit" href="<?=HOST?>edit-text">Редактировать</a></div>
							<?php }?>
						</div>
						<div class="about-me__description about-text mt-20">
							<p>
							<?=$about->description?>
							</p>
						</div>
					</div>
				</div>
			</div>
		
