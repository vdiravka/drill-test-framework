#!/bin/sh

hadoop fs -rm -r /drill/testdata/subqueries/optional_type_v.view.drill
hadoop fs -rm -r /drill/testdata/subqueries/required_type_v.view.drill

${DRILL_HOME}/bin/sqlline -n ${USERNAME} -p ${PASSWORD} -u "jdbc:drill:schema=dfs.subqueries;drillbit=${DRILL_STORAGE_PLUGIN_SERVER}"  --run=resources/Datasources/subqueries/create_views.sql

if [ "$?" -eq 0 ]
then
        exit 0
else
        echo "ERROR: create view script failed."
        exit 1
fi