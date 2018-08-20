#! /usr/bin/python

import os
import yaml


def should_include_folder(folder):
    not_allowed = ['.idea', '.git']
    return os.path.isdir(folder) and folder not in not_allowed


def sanitize(name):
    return name.lower().replace('-', '_').replace(' ', '_')


def process_files():
    folders = [o for o in os.listdir('.') if should_include_folder(o)]

    problems = []
    with open('problems.yml', 'r') as file:
        try:
            yml_problems = yaml.load(file)
            problems = yml_problems['problems']
        except yaml.YAMLError as err:
            print(err)

    with open('README_TEST.md', 'w') as file:
        file.write('# Testing some programming languages :D\n\n')
        for lang in folders:
            file.write('### [{}]({}/README.md)\n'.format(lang.capitalize(), lang))
            for problem in problems:
                path = '{}/{}'.format(lang, sanitize(problem))
                file.write('* [{}]({})\n'.format(problem, path))
                if not os.path.exists(path):
                    os.makedirs(path)
            file.write('\n')

if __name__ == '__main__':
    process_files()