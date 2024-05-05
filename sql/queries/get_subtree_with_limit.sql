-- For the root
select * from node where tree_id = :tree_id and cardinality(parent_ids_with_it) <= :depth;
select * from node where parent_ids_with_it[1] = :root_id and cardinality(parent_ids_with_it) <= :depth;
-- For an arbitrary node
select * from node where parent_ids_with_it @> array [:node_id]
                     and cardinality(parent_ids_with_it) <= cardinality((select parent_ids_with_it from node where id = :node_id)) + :depth - 1;