#!/usr/bin/env bash

DATASET="Toy"
SETTINGS=$1

SCRIPT_DIR=$(pwd)

VIRTUALENV_PATH=$SCRIPT_DIR"/venv"

TRAIN_PATH=$SCRIPT_DIR"/code/train.py"
DATASET_PATH=$SCRIPT_DIR"/data/"$DATASET
SETTINGS_PATH=$SCRIPT_DIR"/settings/"$SETTINGS

ARGUMENT_STRING="--settings "$SETTINGS_PATH" --dataset "$DATASET_PATH

source $VIRTUALENV_PATH"/bin/activate"

$VIRTUALENV_PATH"/bin/python3.5" -u $TRAIN_PATH $ARGUMENT_STRING

deactivate
