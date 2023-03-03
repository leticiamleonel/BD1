with fc as(
    select id_cidade from fornecedor
    union all
    select id_cidade from cliente
)
select c.id_cidade, 
c.den_cidade,
count(*)as cadastros
from cidade as c, fc
where c.id_cidade = fc.id_cidade
group by c.id_cidade;