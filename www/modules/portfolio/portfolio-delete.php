<?php
if (!isAdmin()){
		
		header("Location:" . HOST);
		die();
}

$title="Удалить информацию о проекте";

$work=R::load('works', $_GET['id']);

if(isset($_POST['workDelete'])){ 
	
		
		$postImageFolderLocation=ROOT.'usercontent/portfolio/';
		$postImage=$work->work_image;
		if($postImage !=''){
				
		$picurl=$postImageFolderLocation. $postImage;
		if(file_exists($picurl)){unlink($picurl);}
				
		 		
		$picurl320=$postImageFolderLocation.'320-'. $postImage;
		if(file_exists($picurl320)){unlink($picurl320);}
				
			}
	
		R::trash($work);
		header("Location:".HOST."portfolio?result=workDelete");
		exit();
}



ob_start();
include ROOT. "templates/_parts/_header.tpl";
include ROOT."templates/portfolio/portfolio-delete.tpl";

$content = ob_get_contents();
ob_end_clean();

include ROOT. "templates/_parts/_head.tpl";
include ROOT. "templates/template.tpl";
include ROOT. "templates/_parts/_footer.tpl";
include ROOT. "templates/_parts/_foot.tpl";


?>