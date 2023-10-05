<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title><?=$this->title?></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="<?=$this->meta_desc?>" />
	<meta name="keywords" content="<?=$this->meta_key?>" />
	<link rel="stylesheet" href="styles/main.css" type="text/css" />
	<!--[if IE 8]>
		<link rel="stylesheet" href="styles/ie8.css" type="text/css" />
	<![endif]-->
	<script type="text/javascript" src="js/functions.js"></script>
	<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
	<div id="container">
		<div id="header">
			<img src="images/header2.png" alt="Шапка" />
			<div>
				
				<p class="red">0700-00-55-66</p>
				<p class="blue">Время работы с 09:00 до 19:00<br />перерыв: с 12:00-13:00 </p>
			</div>
			<div class="cart">
				<p class="cart_title">Корзина покупок</p>
				<p class="blue">Текущий заказ</p>
				<p>В корзине <span><?=$this->cart_count?></span> <?=$this->cart_word?><br />на сумму <span><?=$this->cart_summa?></span> сом </p>
				<a href="<?=$this->cart_link?>">Перейти в корзину</a>
			</div>
		</div>
		<div id="topmenu">
			<ul>
				<li>
					<a href="<?=$this->index?>">ГЛАВНАЯ</a>
				</li>
				<li>
					<img src="images/topmenu_border1.png" alt="" />
				</li>
				<li>
					<a href="<?=$this->link_delivery?>">ОПЛАТА И ДОСТАВКА</a>
				</li>
				<li>
					<img src="images/topmenu_border1.png" alt="" />
				</li>
				<li>
					<a href="<?=$this->link_contacts?>">КОНТАКТЫ</a>
				</li>
			</ul>
			<div id="search">
				<form name="search" action="<?=$this->link_search?>" method="get">
					<table>
						<tr>
							<td class="input_left"></td>
							<td>
								<input type="text" name="q" value="поиск" onfocus="if(this.value == 'поиск') this.value=''" onblur="if(this.value == '') this.value='поиск'" />
							</td>
							<td class="input_right"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div id="content">
			<div id="left">
				<div id="menu">
					<div class="header">
						<h3>Категории</h3>
					</div>
					<div id="items">
						<?php for ($i = 0; $i < count($this->items); $i++) { ?>
							<p <?php if ($i + 1 == count($this->items)) {?>class="last"<?php }?>>
								<a href="<?=$this->items[$i]["link"]?>"><?=$this->items[$i]["title"]?></a>
							</p>
						<?php } ?>
					</div>
					<div class="bottom"></div>
				</div>
			</div>
			<div id="right">
				<?php include "content_".$this->content.".tpl"; ?>
			</div>
			<div class="clear"></div>
			<div id="footer">
				<div id="pm">
					<table>
						<tr>
							<td>Способы оплаты:</td>
							<td>
								<img src="images/pm.png" alt="Способы оплаты" />
							</td>
						</tr>
					</table>
				</div>
			
			</div>
		</div>
	</div>
</body>
</html>