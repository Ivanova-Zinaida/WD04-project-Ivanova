
		<div class="content">
			<div class="section-page">
				<div class="container">
					<div class="row">
						<div class="col-md-10 offset-md-1 user-content">
							<div class="title-1 mb-35">Редактировать - Опыт работы</div>
							<div class="aboutme-job-block mb-35">
	                        <?php include ROOT ."templates/about/_job-card-edit.tpl";?>
							</div>
							<div class="title-1 mb-35">Добавить новое место</div>
							
								<?php require ROOT. "templates/_parts/_errors.tpl"?>
								
							<form class="add-job-block" action="edit-jobs" method="POST">
								<div class="form-group"><label class="label">Период<input class="input" name="period" type="text" value="<?=@$_POST['period']?>" placeholder="Введите даты начала и окончания работы"/></label></div>
								<div class="form-group"><label class="label">Название должности<input class="input" name="title" type="text" placeholder="Введите название должности"/ value="<?=@$_POST['title']?>"></label></div>
								<div class="form-group"><label class="label">Описание работы, должностные обязанности, достигнутые результаты<textarea class="textarea" name="description" type="type" placeholder="Напишите интересное краткое содержательное описание"><?=@$_POST['description']?></textarea></label></div>
								<input type="submit" value="Добавить" class="button button--save" name="newJob" >
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>