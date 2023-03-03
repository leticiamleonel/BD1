select id_venda, count(*)
from venda_produto
group by id_venda;