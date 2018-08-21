#! /usr/bin/python

import os
import yaml


def should_include_folder(folder):
    not_allowed = ['.idea', '.git']
    return os.path.isdir(folder) and folder not in not_allowed


def sanitize(name):
    return name.lower().replace('-', '_').replace(' ', '_')


def process_files():
    problems = []
    with open('problems.yml', 'r') as file:
        try:
            yml_problems = yaml.load(file)
            problems = yml_problems['problems']
        except yaml.YAMLError as err:
            print(err)

    languages = []
    with open('languages.yml', 'r') as file:
        try:
            yml_languages = yaml.load(file)
            languages = yml_languages['languages']
        except yaml.YAMLError as err:
            print(err)

    with open('README.md', 'w') as file:
        file.write('# Testing some programming languages :D\n\n')
        for lang_json in languages:

            name = lang_json['name']
            folder_name = lang_json['folder']
            link = lang_json['link']

            # Create directory
            if not os.path.exists(folder_name):
                os.makedirs(folder_name)
                with open('{}/README.md'.format(folder_name), 'w') as lang_file:
                    lang_file.write('# [{}]({})\n'.format(name, link))

            file.write('### [{}]({}/README.md)\n'.format(name, folder_name))
            for problem in problems:
                path = '{}/{}'.format(folder_name, sanitize(problem))
                file.write('* [{}]({})\n'.format(problem, path))
                if not os.path.exists(path):
                    os.makedirs(path)
            file.write('\n')


if __name__ == '__main__':
    process_files()