### A docker image for machine learning development with Python 3.


Included libs:
 * numpy, scipy, sklearn, scikit-image
 * seaborn
 * Keras
 * Tensorflow (cpu only)
 * xgboost



### How to run it

```docker run -v <path>:/notebooks -p 8888:8888 -p 6006:6006 -it misgod/machinelearning-dev-cpu```
