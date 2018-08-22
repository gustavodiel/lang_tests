#! /usr/bin/python

from time import time
import random
import argparse


def bubble_sort(array):
    for i in array:
        for j in array:
            if i > j:
                tmp = i
                i = j
                j = tmp


def generate_ordered_array(number):
    total = 0.0
    array = []
    for i in range(number):
        print('Generating ordered array: {0:.1f}%\r'.format(100 * total/number), end='', flush=True)
        array.append(i)
        total += 1

    print("")
    return array


def generate_reversed_array(number):
    total = 0.0
    array = []
    for i in range(number):
        print('Generating reversed array: {0:.1f}%\r'.format(100 * total/number), end='', flush=True)
        array.append(number - i)
        total += 1

    print("")
    return array


def generate_random_array(number):
    total = 0.0
    array = []
    for i in range(number):
        print('Generating random array: {0:.1f}%\r'.format(100 * total/number), end='', flush=True)
        array.append(random.randint(0, number))
        total += 1

    print("")
    return array


if __name__ == '__main__':

    parser = argparse.ArgumentParser('Test Bubble Sort on several array configurations')
    parser.add_argument('size', type=int, help='Size of each of the arrays')

    args = parser.parse_args()

    numbers_to_order = args.size

    ordered_array = generate_ordered_array(numbers_to_order)
    reversed_array = generate_reversed_array(numbers_to_order)
    random_array = generate_random_array(numbers_to_order)

    start = time()
    bubble_sort(ordered_array)
    finish = time()
    print("Time to execute ORDERED: {}".format(finish - start))

    start = time()
    bubble_sort(reversed_array)
    finish = time()
    print("Time to execute REVERSED: {}".format(finish - start))

    start = time()
    bubble_sort(random_array)
    finish = time()
    print("Time to execute RANDOM: {}".format(finish - start))
