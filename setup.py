#! /usr/bin/env python3
"""Installation script."""


from setuptools import setup


setup(
    name='mollyguardctl-py3.6',
    author='Nils Winnwa',
    author_email='nils.winnwa@uni-paderborn.de',
    python_requires='>=3.6',
    py_modules=['mollyguardctl'],
    entry_points={'console_scripts': ['mollyguardctl = mollyguardctl:main']},
    data_files=[
        ('/etc/systemd/system', [
            'mollyguard.service'
        ])
    ],
    url='https://github.com/conqp/',
    license='GPLv3',
    description='Mollyguards your system. - Build for RHEL an Python 3.6'
)
