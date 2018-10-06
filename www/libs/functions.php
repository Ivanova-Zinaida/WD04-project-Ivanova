<?PHP
  function adopt($text){
	  return '=?UTF8?B?'.base64_encode($text).'?=';
  }

?>