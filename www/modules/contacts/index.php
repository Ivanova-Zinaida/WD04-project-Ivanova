<?php


$title="Контакты";

$contacts=R::load('contacts',1);


$cats=R::find('categories', 'ORDER BY cat_title ASC');

ob_start();
include ROOT. "templates/_parts/_header.tpl";
include ROOT."templates/contacts/contacts.tpl";
/*include ROOT. "templates/main/main.tpl";*/
$content = ob_get_contents();
ob_end_clean();


include ROOT. "templates/_parts/_head.tpl";
include ROOT. "templates/template.tpl";
include ROOT. "templates/_parts/_footer.tpl";
include ROOT. "templates/_parts/_foot.tpl";


?>