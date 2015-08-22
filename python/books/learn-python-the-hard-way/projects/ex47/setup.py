try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'description': 'ex47',
    'author': 'Wojtek Gawroński',
    'url': 'http://nope.com.',
    'download_url': '(none)',
    'author_email': '(none)',
    'version': '0.1',
    'install_requires': ['nose'],
    'packages': ['ex47'],
    'scripts': [],
    'name': 'ex47'
}

setup(**config)
