from setuptools import setup, Extension
from Cython.Build import cythonize

ext = Extension(
    name="test",
    sources=["inlineCython.pyx", "inline_asm.c"],  # Cython and C files
    include_dirs=["."],  # Ensure the current directory is included for headers
)

setup(
    ext_modules=cythonize(ext),
)
