<?php
require_once "modules_class.php";

class Content extends Modules {
	
	protected $title = "Интернет-магазин";
	protected $meta_desc = "Интернет-магазин по спортивных товаров";
	protected $meta_key = "интернет магазин, интернет спортивных товаров, интернет магазин спортивных товаров";
	
	protected function getContent() {
		$this->setLinkSort();
		$sort = $this->data["sort"];
		$up = $this->data["up"];
		$this->template->set("table_products_title", "Новинки");
		$this->template->set("products", $this->product->getAllSort($sort, $up, $this->config->count_on_page));
		return "index";
	}
	
}

?>