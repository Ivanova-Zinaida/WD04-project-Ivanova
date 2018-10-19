						
			<?php if(isLoggedIn()){?>
				
						<form class="comment-add-block" id="commentForm" method='POST' action="<?=HOST?>blog/post?id=<?=$post['id']?>">
							<div class="comment-add-block__left">
								<div class="avatar avatar--small">
								
								<?PHP
								if($_SESSION['logged_user']['avatar_small'] !=''){?>
								<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt='<?=$_SESSION["logged_user"]["name"]?> <?=$_SESSION["logged_user"]["secondname"]?>' />
								<?php }?>

								</div>
							</div>
							<div class="comment-add-block__right">
								<h6 class="comment-add-block__right-title"><?=$_SESSION["logged_user"]['name']?> <?=$_SESSION['logged_user']['secondname']?></h6>
								<div class="notify notify--error hide">Комментарий не может быть пустым</div>
								<textarea class="textarea textarea--comment-add" name="textComment" placeholder="Присоединиться к обсуждению..."></textarea>
									<div class="comment-add__button">
										<input type="hidden" name="addComment">
										<input type="submit" class="button" name="addComment" value="Опубликовать" data-add-comment>
									</div>
								
							</div>
						</form>

				
			<?PHP } else{?>	
						<div class="comment-register">
							<p><a href="<?=HOST?>login">Войдите</a> или <a href="<?=HOST?>registration">зарегистрируйтесь</a><br/>чтобы оставить комментарий</p>
						</div>	
			<?PHP }?>