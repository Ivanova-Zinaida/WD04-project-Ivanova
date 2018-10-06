<?php
	foreach ($success as $success){
		if(count($success)==1){ ?>
							
	<div class="notify no-radius-bottom notify--error mt-10 success-error"><?=$success['title']?></div>

	<?php } else if (count($success)==2){?>
							
<div class="notify no-radius-bottom notify--error mt-10 success-error"><?=$success['title']?></div>
			<div class="notify no-radius-top">
			<?=$success['desc']?> </div>
							
			<?php }
			}
?>