### R kernels with Jupyter notebooks in VS code

Open the `R` terminal within VS code and install the `IRkernel` package by running the following command:

```R
install.packages('IRkernel')
```

Register the `IRkernel` package with the Jupyter notebook by running the following command:

```R
IRkernel::installspec()
```