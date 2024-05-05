alter table node
    add constraint node_depth_check check (cardinality(parent_ids_with_it) <= 100)