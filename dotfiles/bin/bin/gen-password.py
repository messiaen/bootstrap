#!/usr/bin/env python3

import random
import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser("gen-password.py")
    parser.add_argument("--length", type=int, default=16)
    parser.add_argument("--use-special-chars", default=False, action="store_true")
    args = parser.parse_args()

    char_set = [chr(i) for i in range(ord('a'), ord('z') + 1)]
    char_set.extend([chr(i) for i in range(ord('A'), ord('Z') + 1)])
    char_set.extend([chr(i) for i in range(ord('0'), ord('9') + 1)])
    if args.use_special_chars:
        char_set.extend([chr(i) for i in range(ord('!'), ord('/') + 1)])
        char_set.extend([chr(i) for i in range(ord(':'), ord('@') + 1)])
        char_set.extend([chr(i) for i in range(ord('['), ord('`') + 1)])
        char_set.extend([chr(i) for i in range(ord('{'), ord('~') + 1)])
    char_set = set(char_set)
    char_set.remove('"')
    char_set.remove("'")
    char_set = list(char_set)

    passwd = []
    for _ in range(args.length):
        passwd.append(random.choice(char_set))
    print("".join(passwd))
