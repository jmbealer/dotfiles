#!/usr/bin/env bash

ble-face -s region bg=60,fg=black
ble-face auto_complete=fg=238,bg=transparent
ble-face region_insert=fg=blue,bg=transarent

bleopt default_keymap=vi

ble-bind -m 'vi_nmap' -f s vi-command/backward-vword
ble-bind -m 'vi_nmap' -f t vi-command/forward-line
ble-bind -m 'vi_nmap' -f n vi-command/backward-line
ble-bind -m 'vi_nmap' -f b vi-command/forward-vword

ble-bind -m 'vi_nmap' -f h vi_nmap/kill-forward-char-and-insert
ble-bind -m 'vi_nmap' -f j vi-command/search-forward-char-prev
ble-bind -m 'vi_nmap' -f k vi-command/search-repeat

ble-bind -m vi_nmap --cursor 2
ble-bind -m vi_imap --cursor 5
ble-bind -m vi_omap --cursor 4
ble-bind -m vi_xmap --cursor 2
ble-bind -m vi_smap --cursor 2
ble-bind -m vi_cmap --cursor 0

ble-bind -m 'vi_imap' -f M-f '@nomarked forward-cword'
ble-bind -m 'vi_imap' -f M-b '@nomarked backward-cword'

# newly added
bleopt prompt_ps1_transient=always
