#!/usr/bin/env bash

sudo dnf repoquery --qf "%{name}" --userinstalled > userinstalled.txt


