select f.id_fornecedor,
f.den_fornecedor,
count(*) as num_contas_pagar
from fornecedor as f,
conta_pagar as cp
where f.id_fornecedor = cp.id_fornecedor
group by f.id_fornecedor
having count(*)>10;