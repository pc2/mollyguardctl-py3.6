#! /usr/bin/env python3
"""Installation script."""


from setuptools import setup


setup(
    name='mollyguardctl-py3.6',
    python_requires='>=3.6',
    py_modules=['mollyguardctl'],
    entry_points={'console_scripts': ['mollyguardctl = mollyguardctl:main']},
    license='GPLv3',
    description='Mollyguards your system. - Build for RHEL an Python 3.6'
)
