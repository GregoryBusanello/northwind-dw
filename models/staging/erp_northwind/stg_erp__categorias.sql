with
    fonte_categoria as (
        select 
            cast(category_id as int) as id_categoria
            , cast(category_name as string) as nome_categoria
            , cast(description as string) as descricao_categoria
            --, picture Não é usada nas regras de negocio
        from {{ source('erp', 'categories') }}
    )

select *
from fonte_categoria