# based on this: https://godatadriven.com/blog/a-practical-guide-to-using-setup-py/
# and this: https://python-packaging.readthedocs.io/en/latest/minimal.html

from setuptools import setup, find_packages

setup(
    name='sophiarenderlib',
    version='0.1.0',
    description='Everything that we need for rendering',
    author='Friedrich Wicke and Gero Embser',
    author_email='sophia@sophiaedulabs.com',
    url='sophiaedulabs.com',
    packages=find_packages(include=['sophiarenderlib', 'sophiarenderlib.*']),
)