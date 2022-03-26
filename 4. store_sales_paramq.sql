/* Продажи магазина.
Запрос с параметром
 */

prepare store_sale from 'select stores.adress, sum(sales.total)
	from stores
	join sales
	on stores.id = sales.store_id
	where store_id = ?
	group by stores.adress;';

set @s.id = 2			# выбираем магазин №2

EXECUTE store_sale USING @s.id;

