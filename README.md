> :warning: **THIS PACKAGE IS NO LONGER NEEDED!**
Since dbt-ibmdb2==0.2.0 utils are included in the adapter package.

# ibmdb2-utils

This [dbt](https://github.com/fishtown-analytics/dbt) package contains macros 
that:
- can be (re)used across dbt projects running on DB2 databases
- define implementations of [dispatched macros](https://docs.getdbt.com/reference/dbt-jinja-functions/adapter/#dispatch) from other packages that can be used on a database that speaks DB2 SQL.

## Installation Instructions

To make use of these DB2 adaptations in your dbt project, you must do two things:
1. Install both `dbt-utils` and `ibmdb2-utils` by adding the following to your `packages.yml`
    ```yaml
    packages:
      - package: fishtown-analytics/dbt_utils
        version: 0.6.4
      - package: aurany/ibmdb2_utils
        version: 0.1.0
    ```
2. Tell `dbt-utils` to also look for the `ibmdb2-utils` macros by adding this section to your `dbt_project.yml`
    ```yaml
    vars:
      dbt_utils_dispatch_list: ['ibmdb2_utils']
    ```
Check [dbt Hub](https://hub.getdbt.com) for the latest installation 
instructions, or [read the docs](https://docs.getdbt.com/docs/package-management) 
for more information on installing packages.

----

## Usage

Wherever a custom ibmdb2 macro exists, dbt_utils adapter dispatch will pass to ibmdb2_utils. This means you can just do `{{dbt_utils.hash('mycolumnname')}}` just like your friends with Snowflake.

## Compatibility

This package provides "shims" for:
- [dbt_utils](https://github.com/fishtown-analytics/dbt-utils) (partial)

## Credits
ibmdb2-utils is heavily inspired by and borrows from [tsql-utils](https://github.com/dbt-msft/tsql-utils).
