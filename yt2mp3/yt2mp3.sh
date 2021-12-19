#!/usr/bin/env bash


youtube-dl --extract-audio --audio-format mp3  -o '$HOME/Muzyka/%(title)s.%(ext)s'   $1
