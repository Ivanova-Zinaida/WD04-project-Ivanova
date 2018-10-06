<?php

function createThumbnail($imagePath, $cropWidth = 100, $cropHeight = 100){

	/* Чтение изображения */
	$imagick = new Imagick($imagePath);
	$width = $imagick->getImageWidth();
	$height = $imagick->getImageHeight();


	$imagick->thumbnailImage($cropWidth, $cropHeight);


	// Определяем размеры полученной миниатюры
	$width = $imagick->getImageWidth();
	$height = $imagick->getImageHeight();

	// Определяем центр изображения
	$centreX = round($width / 2); // 300
	$centreY = round($height / 2); // 150

	// Определяем точку для обрезки по центру 
	$cropWidthHalf  = round($cropWidth / 2);
	$cropHeightHalf = round($cropHeight / 2);
	
	// Координаты для старта отбрезки
	$startX = max(0, $centreX - $cropWidthHalf);
	$startY = max(0, $centreY - $cropHeightHalf);

	$imagick->cropImage($cropWidth, $cropHeight, $startX, $startY);

	// Возвращаем готовое изображение
	return $imagick;
}
		
	function createThumbnailCrop ($imagePath,$cropWidth, $cropHeight){
	
		
		// чтение изображения
	$imagick=new Imagick($imagePath);
	$width=$imagick->getImageWidth();
	$height=$imagick->getImageHeight();
	$imagick->cropThumbnailImage($cropWidth, $cropHeight);
	return $imagick;
	$imagick->destroy();
							
	}
				
	 function creatThumbnailBig($imagePath,$cropWidth, $cropHeight){
	  	// чтение изображения
		$imagick=new Imagick($imagePath);
		$width=$imagick->getImageWidth();
		$height=$imagick->getImageHeight();
		
	  	if($width>$height){
	// для широких картинок
		
			$imagick->thumbnailImage( $cropWidth, 0);
		}else{
			$imagick->thumbnailImage( 0, $cropHeight);
		}
		
		return $imagick;
		$imagick->destroy();
									
	  }
	
/*  function creatThumbnailBig($imagePath,$cropWidth, $cropHeight){
	  	// чтение изображения
		$imagick=new Imagick($imagePath);
		$width=$imagick->getImageWidth();
		$height=$imagick->getImageHeight();
		
	  	if($width>$height){
	// для широких картинок
		
			$imagick->thumbnailImage( $cropWidth, 0);
		}else{
			$imagick->thumbnailImage( 0, $cropHeight);
		}
		
		return $imagick;
		$imagick->destroy();
									
	  }
	
		
		
	}*/

		  

?>