#!/bin/bash
localstack pod config --name lambda-harshcasper

localstack pod commit --name lambda-harshcasper --message "First commit"

localstack pod list

localstack pod inspect --name lambda-harshcasper

localstack pod push --name lambda-harshcasper --message "Pushing it" --local

localstack pod inject --name lambda-harshcasper
