<?php

$title="Блог-добавить новый пост";


if(isset($_POST['postNew'])){
	
	if(trim($_POST['postTitle'])==''){
		$errors[]=['title'=>'Введите Название поста'];
	}
	if(trim($_POST['postText'])==''){
		$errors[]=['title'=>'Введите Текст поста'];
	}
	
	if(empty($errors)){
		$post=R::dispense('posts');
		$post->title=htmlentities($_POST['postTitle']);
		$post->text=$_POST['postText'];
		$post->date=time();
		$post->authorID=$_SESSION['logged_user']['id'];
		$post->dateTime=R::isoDateTime();
		
		
		if(isset($_FILES['postImage']['name']) && $_FILES['postImage']['tmp_name'] !=''){
			
			$fileName=$_FILES['postImage']['name'];
			$fileTmpLoc=$_FILES['postImage']['tmp_name'];
			$fileSize=$_FILES['postImage']['size'];
			$fileType=$_FILES['postImage']['type'];
			$fileErrorMsg=$_FILES['postImage']['error'];
			$kaboom=explode(".",$fileName);
			$fileExt=end($kaboom);
			
			list($width, $height) = getimagesize($fileTmpLoc);
			
			if($width<10 || $height<10){
				$errors[]=['title'=>'That image has no dimensiots'];
			}
			if($fileSize>4194304){
				
				$errors[]=['title'=>'Файл изображения не должен бфть более 4 Mb'];
				
			}
			
			if(!preg_match("/\.(gif|jpg|jpeg|png)$/i",$fileName)){
				$errors[]=['title'=>'Неверный формат файла',
						'desc'=>'<p>Файл изображения долен быть в формате gif, jpg, png или jpeg</p>'
					 ];
		        }
		
			
			if( $fileErrorMsg==1){
				$errors[]=['title'=>'При загрузке изображения произошла ошибка. Повторите попытку'];
			}

			$db_file_name=rand(100000000000,999999999999).'.'.$fileExt;
			$postImageFolderLocation=ROOT.'usercontent/blog/';
			$uploadfile=$postImageFolderLocation. $db_file_name;
			$moveResult=move_uploaded_file($fileTmpLoc, $uploadfile);
			
			if($moveResult!=true){
				$errors[]=['title'=>'Ошибка загрузки файла. Повторите попытку'];
			}
			
			include_once(ROOT."/libs/image_resize_imagick.php");
			
			$target_file=$postImageFolderLocation.$db_file_name;
			
			$wmax=920;
			$hmax=620;
			$img=creatThumbnailBig($target_file,$wmax,$hmax);
			$img->writeImage($target_file);
			
			$post->postImage=$db_file_name;
			
						
			$target_file=$postImageFolderLocation.$db_file_name;
			$resized_file=$postImageFolderLocation. '320-'. $db_file_name;
			$wmax=320;
			$hmax=140;
			$img=createThumbnailCrop($target_file,$wmax,$hmax);
			$img->writeImage($resized_file);
			
			$post->postImageSmall='320-'. $db_file_name;
			
		}
		R::store($post);
		header("Location:".HOST."blog");
		exit();
	}
}

ob_start();
include ROOT. "templates/_parts/_header.tpl";
include ROOT."templates/blog/post-new.tpl";
/*include ROOT. "templates/main/main.tpl";*/
$content = ob_get_contents();
ob_end_clean();

include ROOT. "templates/_parts/_head.tpl";
include ROOT. "templates/template.tpl";
include ROOT. "templates/_parts/_footer.tpl";
include ROOT. "templates/_parts/_foot.tpl";


?>