select * from node where tree_id = :tree_id;
select * from node where parent_ids_with_it[1] = :root_id;