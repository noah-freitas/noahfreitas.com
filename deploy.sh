#!/bin/bash

cp app/*.html dist/
cp app/views/*.html dist/views/
cp app/images/*.jpg dist/images/
cp app/*.json dist/
lsc -co dist/js app/scripts/*.ls
lsc -co dist/js/controllers app/scripts/controllers/*.ls
lsc -co dist/js/services app/scripts/services/*.ls

