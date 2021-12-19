#!/usr/bin/env bash

aspell --lang pl dump master | aspell --lang pl expand | tr ' ' '\n' > polish.dic
