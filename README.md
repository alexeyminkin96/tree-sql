# SQL Tables for Storing and Using Tree-Like Structures

This repository provides methods for creating SQL tables to store and utilize tree-like structures. It also includes
commonly used queries for such tables.

## Table of Contents

- [Introduction](#introduction)
- [Initialization](#initialization)
- [Frequently Used Queries](#frequently-used-queries)
- [Constraints](#constraints)

## Introduction

Tree-like structures are common in database modeling, especially when dealing with hierarchical data such as
organizational charts, file systems, or product categories. This README outlines methods to create SQL tables that
efficiently store and manage such structures.

## [Initialization](./sql/tables)

In this directory, you will find SQL scripts for creating tables. There are 2 main options:

- **[Basic Table](./sql/tables/basic_table.sql)**: This option is suitable for working with the tree based on the ID of
  its root.
- **[Table Containing tree_id](./sql/tables/basic_table_with_tree_id.sql)**: This option is suitable when working with
  the tree based on some external identifier (such as user, organization, etc.).

## [Frequently Used Queries](./sql/queries)

The repository includes frequently used SQL queries for working with tree-like structures. These queries cover common
operations such as:

- **[Get tree](./sql/queries/get_tree.sql)**: Retrieves all nodes of the tree.
- **[Get from root to node](./sql/queries/get_from_root_to_node.sql)**: Retrieves the chain of nodes from the root to
  the specified node.
- **[Get level](./sql/queries/get_level.sql)**: Retrieves all nodes at a specific level from the root.
- **[Get subtree](./sql/queries/get_subtree.sql)**: Retrieves the subtree starting from a specific node.
- **[Get subtree with limit](./sql/queries/get_subtree_with_limit.sql)**: Retrieves the subtree starting from a specific
  node with a depth limit for child nodes.

## [Constraints](./sql/constraints)

The repository includes optional constraints that may be useful when working with trees:

- **[Tree Depth Constraint](./sql/constraints/node_depth_check.sql)**: Limits the maximum nesting level of nodes in the
  tree.
