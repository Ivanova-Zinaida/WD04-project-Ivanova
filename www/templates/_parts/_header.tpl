<?php 
	if(isAdmin()){
		include ROOT."templates/_parts/_admin-panel.tpl";
	}?>
<header class="header">
	<div class="header-admin__container">
		<div class="header-top">
	<?php include(ROOT. "templates/_parts/_header-logo.tpl");?>
	
	<?php
	
		if(isLoggedIn()){
			if($_SESSION['role'] !='admin'){
				 include(ROOT. "templates/_parts/_header-user-profile.tpl");
			}
			
		}else {
			 include(ROOT. "templates/_parts/_header-user-login-links.tpl");
		}
	
	
	?>
		</div>
	<?php include(ROOT. "templates/_parts/_header-nav.tpl");?>
	</div>
</header>