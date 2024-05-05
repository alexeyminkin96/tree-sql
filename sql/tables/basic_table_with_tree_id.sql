create table node
(
    id                 bigint primary key generated always as identity,
    tree_id            bigint   not null,
    parent_ids         bigint[],
    parent_ids_with_it bigint[] not null generated always as (parent_ids || id) stored,

    constraint node_cycle_check check (not (parent_ids @> array [id])),

    unique (tree_id, parent_ids_with_it),

    foreign key (tree_id, parent_ids)
        references node (tree_id, parent_ids_with_it)
        on delete cascade
        on update cascade
);

create unique index on node (tree_id) where parent_ids is null;