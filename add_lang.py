#! /usr/bin/python

import argparse
import os

parser = argparse.ArgumentParser(
    description='Creates a folder with a certain programming language name, a README.md and add an entry to root README.md.')
parser.add_argument('name', help='name of the language')
parser.add_argument('link', help='link to language website')


def create_lang_folder(name, link):
    # Create directory
    if not os.path.exists(name):
        os.makedirs(name)

    # Create README.md
    with open('{}/README.md'.format(name), 'w') as file:
        file.write('# [{}]({})\n'.format(name.capitalize(), link))


if __name__ == '__main__':
    args = parser.parse_args()

    create_lang_folder(args.name, args.link)



