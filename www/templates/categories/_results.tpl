<?PHP if($_GET['result']=='catCreated'){?>
		
	<div class="notify no-radius-bottom notify--error mt-10 success-error" data-notify-hide>
		Категория успешно добавлена!
	</div>
	
<?PHP } ?> 

<?PHP if($_GET['result']=='catUpdate'){?>
		
	<div class="notify no-radius-bottom notify--error mt-10 success-error" data-notify-hide>
		Категория успешно отредактирована!
	</div>
	
	
<?PHP } ?> 

<?PHP if($_GET['result']=='catDeleted'){?>
		
	<div class="notify no-radius-bottom notify--error mt-10 " data-notify-hide>
		Категория успешно удалена!
	</div>
	
	
<?PHP } ?> 
