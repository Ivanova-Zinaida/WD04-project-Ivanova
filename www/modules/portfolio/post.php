<?php
$sqlPost='
	SELECT 
		works.id, works.title,  works.link_github,  works.link_work, works.technology,works.result, works.description, works.date_time, works.author_id, works.work_image, works.cat, users.name, users.secondname, categories.cat_title 
	FROM `works` 
	INNER JOIN categories ON works.cat = categories.id
	INNER JOIN users ON works.author_id = users.id
	WHERE works.id = '. $_GET['id'].' LIMIT 1';

$work=R::getAll($sqlPost);
$work=$work[0];


$title="Портфолио";

ob_start();

include ROOT."templates/portfolio/post.tpl";

$content = ob_get_contents();
ob_end_clean();

include ROOT. "templates/_parts/_head.tpl";
include ROOT. "templates/template.tpl";
include ROOT. "templates/_parts/_footer.tpl";
include ROOT. "templates/_parts/_foot.tpl";


?>