#!/usr/bin/env python3

import json

dunst_history_file = '/home/aesophor/.cache/dunst/history'

if __name__ == '__main__':
    with open(dunst_history_file, 'r') as f:
        j = json.loads(f.read())

    print(len(j))
