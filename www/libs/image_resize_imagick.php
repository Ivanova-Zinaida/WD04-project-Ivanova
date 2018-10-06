<?php
	function createThumbnail($imagePath, $cropWidth=100, $cropHeight=100){
		
		// чтение изображения
		
		$imagick=new Imagick($imagePath);
		$width=$imagick->getImageWidth();
		$height=$imagick->getImageHeight();
		
		// изменение размера
		if($width>$height){
	
			$imagick->thumbnailImage(0, $cropHeight);
		}else{
			$imagick->thumbnailImage( $cropWidth, 0);
		}
		
		
		// определение полученного размера миниатеры
		$width=$imagick->getImageWidth();
		$height=$imagick->getImageHeight();
		
		// определение центра изображения
		$centreX=round($width/2);
		$centreY=round($height/2);
		
		// определение точки для обрезки центра
		$cropWidthHalf=round($cropWidth/2);
		$cropHeightHalf=round($cropHeight/2);
		
		// координаты для старта обрезки
		$startX=max(0,$centreX-$cropWidthHalf);
		$startY=max(0,$centreY-$cropHeightHalf);
		
		$imagick->cropImage($cropWidthHalf, $cropHeightHalf, $startX, $startY);
		
		// возвращение готового изображения
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
	function createThumbnailCrop ($imagePath,$cropWidth, $cropHeight){
	
		
		// чтение изображения
	$imagick=new Imagick($imagePath);
	$width=$imagick->getImageWidth();
	$height=$imagick->getImageHeight();
	$imagick->cropThumbnailImage($cropWidth, $cropHeight);
	return $imagick;
	$imagick->destroy();
							
		
		
		
	}

		  

?>