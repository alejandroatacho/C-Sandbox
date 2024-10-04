# Step 1: Build the Cython extension

python3 setup.py build_ext --inplace


## Alternatively, if your main.pyx file has the __main__ section (as in your example), you can directly run:
python3 -c "import main; main.main()"