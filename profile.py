import numpy as np
# import cv2
import unittest
# Import the functions we want to test.
from main import process_frame

# This is an example of building a test suite using Python's unittest module.

def test_stats():
    output = { "cpu" : 100,
                "gpu": 120,
             }

    return output
    
# This will run all the tests when this file is executed.
if __name__ == "__main__":
    print (test_stats())
