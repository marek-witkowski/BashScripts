#!/bin/bash

sudo dnf repoquery --qf "%{name}" --userinstalled > userinstalled.txt


