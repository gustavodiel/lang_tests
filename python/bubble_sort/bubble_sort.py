#! /usr/bin/python

from time import time
import random


def bubble_sort(array):
    for i in array:
        for j in array:
            if i > j:
                tmp = i
                i = j
                j = tmp


def generate_ordered_array(number):
    return [i for i in range(number)]


def generate_reversed_array(number):
    return [number - i for i in range(number)]


def generate_random_array(number):
    return [random.randint(0, number) for i in range(number)]


if __name__ == '__main__':
    numbers_to_order = 5000

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
