### A docker image for machine learning development with Python 2.


Included libs:
 * numpy, scipy, sklearn
 * seaborn
 * Keras
 * Tensorflow (gpu enabled)
 * xgboost



### How to run it
cpu-only
```docker run -v <path>:/notebooks -p 8888:8888 -p 6006:6006 -it misgod/machinelearning-dev```

gpu-enabled
```nvidia-docker run -v <path>:/notebooks -p 8888:8888 -p 6006:6006 -it misgod/machinelearning-dev```


