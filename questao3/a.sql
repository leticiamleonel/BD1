select f.id_cidade,
f.den_fornecedor,
sum(c.valor_total) as total
from compra as c,
fornecedor as f
where c.id_fornecedor = f.id_fornecedor
group by f.id_fornecedor;