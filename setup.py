try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup
config = {
    'description': 'My Project',
    'author': 'Charles London',
    'url': 'Project URL',
    'download_url': 'Where to download it from',
    'author_email': 'charles@new-web-sites.com',
    'version': '0.1',
    'install_requires': ['nose'],
    'packages': ['NAME'],
    'scripts': [],
    'name': 'projectname'
}
setup(**config)
