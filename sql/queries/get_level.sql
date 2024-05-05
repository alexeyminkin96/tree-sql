select * from node where tree_id = :tree_id and cardinality(parent_ids_with_it) = :depth;
select * from node where parent_ids_with_it[1] = :root_id and cardinality(parent_ids_with_it) = :depth;