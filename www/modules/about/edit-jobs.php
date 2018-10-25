<?php

if (!isAdmin()){
		
	header("Location:" . HOST);
	die();
}

$jobs=R::find("jobs", "ORDER BY ID DESC");
 $title='Редактировать информацию о месте работы';


if(isset($_POST['newJob'])){
	
	if(trim($_POST['period'])==''){
		$errors[]=['title'=>'Введите период работы'];
	}
	if(trim($_POST['description'])==''){
		$errors[]=['title'=>'Введите описание'];
	}
		if(trim($_POST['title'])==''){
		$errors[]=['title'=>'Введите место работы'];
	}
	
	if(empty($errors)){ 
		$job=R::dispense('jobs');
		
		$job->title=htmlentities($_POST['title']);
		$job->description=htmlentities($_POST['description']);
		$job->period=htmlentities($_POST['period']);
		
		R::store($job);
		header("Location:".HOST."about");
		exit();
	}
}



ob_start();
include ROOT. "templates/_parts/_header.tpl";
include ROOT."templates/about/edit-jobs.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT. "templates/_parts/_head.tpl";
include ROOT. "templates/template.tpl";
include ROOT. "templates/_parts/_footer.tpl";
include ROOT. "templates/_parts/_foot.tpl";


?>