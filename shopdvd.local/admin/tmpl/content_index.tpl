<h3>Статистика за последние неделю</h3>
<table class="info">
	<tr class="header">
		<td>Количество заказов</td>
		<td>Счетов на сумму</td>
		<td>Доход</td>
		<td>Купленных товаров</td>
	</tr>
	<tr>
		<td><?=$this->result["count_orders"]?></td>
		<td><?=$this->result["summa_account"]?> сом </td>
		<td><?=$this->result["income"]?> сом </td>
		<td><?=$this->result["count_dvd"]?></td>
	</tr>
</table>