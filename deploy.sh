#!/bin/bash

cp app/*.html dist/
cp app/views/*.html dist/views/
cp app/views/directives/*.html dist/views/directives/
cp app/*.json dist/
lsc -co dist/js app/scripts/*.ls
lsc -co dist/js/controllers app/scripts/controllers/*.ls
lsc -co dist/js/services app/scripts/services/*.ls
lsc -co dist/js/modules app/scripts/modules/*.ls

