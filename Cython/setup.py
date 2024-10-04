from setuptools import setup
from Cython.Build import cythonize
import sysconfig

setup(
    name='Compile Tester',
    ext_modules=cythonize("main.pyx"),
    include_dirs=[sysconfig.get_paths()["include"]],
)
