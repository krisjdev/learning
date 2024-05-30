#!/bin/bash
gnome-terminal --zoom 0.85 -- gdb-multiarch -q --tui --ex 'target remote 192.168.1.199:1234'