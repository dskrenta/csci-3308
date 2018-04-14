#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# David Skrenta
# Spring 2018
# CSCI 3308
# Univerity of Colorado
# Text Processing Module

# Bugs:
# 1) count_vowels regex missing all vowels (aeou) -> (aeiou)
# 2) is_phonenumber incorrect pattern (3 digits, 3 digits, 3 digits) -> (3 digits, 3 digits, 4 digits)

import unittest
import textproc

class TextprocTestCase(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        pass

    @classmethod
    def tearDownClass(cls):
        pass

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def test_init(self):
        text = "tesing123"
        p = textproc.Processor(text)
        self.assertEqual(p.text, text, "'text' does not match input")

    # Add Your Test Cases Here...

    def test_count(self):
        text = 'hello, world'
        p = textproc.Processor(text)
        self.assertEqual(p.count(), len(text), 'Incorrect string length')

    def test_count_alpha(self):
        text = '123abc'
        p = textproc.Processor(text)
        self.assertEqual(p.count_alpha(), 3, 'Incorrect alphanumeric character count')

    def test_count_numeric(self):
        text = '123abc'
        p = textproc.Processor(text)
        self.assertEqual(p.count_numeric(), 3, 'Incorrect numeric character count')

    def test_count_vowels(self):
        text = 'aeiou123'
        p = textproc.Processor(text)
        self.assertEqual(p.count_vowels(), 5, 'Incorrect vowel count')

    def test_is_phonenumber(self):
        text = '1234567683'
        p = textproc.Processor(text)
        self.assertEqual(p.is_phonenumber(), True, 'Incorrect phone number parsing')

# Main: Run Test Cases
if __name__ == '__main__':
    unittest.main()
