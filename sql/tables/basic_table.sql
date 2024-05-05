create table node
(
    id                 bigint primary key generated always as identity,
    parent_ids         bigint[],
    parent_ids_with_it bigint[] not null generated always as (parent_ids || id) stored,

    constraint node_cycle_check check (not (parent_ids @> array [id])),

    unique (parent_ids_with_it),

    foreign key (parent_ids)
        references node (parent_ids_with_it)
        on delete cascade
        on update cascade
);